param(
    [string]$ProjectRoot = (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent),
    [int]$Jobs = 4
)
# Library worker for build_veos_windows.m. Does not import desktop sources.
$ErrorActionPreference = 'Stop'
$ProjectRoot = (Resolve-Path -LiteralPath $ProjectRoot).Path
$cmake = Join-Path $ProjectRoot 'dependencies/cmake/cmake-3.31.8-windows-x86_64/bin/cmake.exe'
$source = Join-Path $ProjectRoot 'dependencies/acados-v054'
$output = Join-Path $ProjectRoot 'buildVEOS'
$install = Join-Path $output 'install'
$toolchain = Join-Path $PSScriptRoot 'Toolchain-dSpaceVEOS-Windows.cmake'
$compiler = 'C:/Program Files/Common Files/dSPACE/GCC/14.2/x86_64/bin/gcc.exe'
foreach ($required in @($cmake,$compiler,$toolchain)) {
    if (!(Test-Path -LiteralPath $required)) { throw "Missing prerequisite: $required" }
}
$triple = (& $compiler -dumpmachine).Trim()
if ($LASTEXITCODE -ne 0 -or $triple -ne 'x86_64-w64-mingw32') { throw "Unexpected compiler target: $triple" }
& $cmake -S $source -B (Join-Path $output 'acados') -G 'MinGW Makefiles' `
    "-DCMAKE_TOOLCHAIN_FILE=$toolchain" "-DCMAKE_INSTALL_PREFIX=$install" `
    "-DACADOS_INSTALL_DIR=$install" -DCMAKE_BUILD_TYPE=Release `
    -DBUILD_SHARED_LIBS=OFF -DBLASFEO_TARGET=GENERIC -DHPIPM_TARGET=GENERIC `
    -DACADOS_WITH_OPENMP=OFF -DACADOS_EXAMPLES=OFF -DACADOS_UNIT_TESTS=OFF `
    -DBLASFEO_EXAMPLES=OFF -DEXT_DEP=OFF
if ($LASTEXITCODE -ne 0) { throw 'Windows acados configuration failed' }
& $cmake --build (Join-Path $output 'acados') --parallel $Jobs
if ($LASTEXITCODE -ne 0) { throw 'Windows acados compilation failed' }
& $cmake --install (Join-Path $output 'acados')
if ($LASTEXITCODE -ne 0) { throw 'Windows acados installation failed' }
$record = [ordered]@{
    target = 'VEOS_WIN64_GCC'; compiler = $compiler; triple = $triple
    compilerVersion = (& $compiler -dumpfullversion).Trim()
    acadosSource = $source; install = $install; builtUtc = [DateTime]::UtcNow.ToString('o')
}
$json = $record | ConvertTo-Json
[IO.File]::WriteAllText((Join-Path $output 'toolchain_manifest.json'), $json, (New-Object Text.UTF8Encoding $false))
