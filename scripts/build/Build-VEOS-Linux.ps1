param(
    [string]$ProjectRoot = (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent),
    [int]$Jobs = 4
)
$ErrorActionPreference = 'Stop'
$ProjectRoot = (Resolve-Path -LiteralPath $ProjectRoot).Path
$cmake = Join-Path $ProjectRoot 'dependencies/cmake/cmake-3.31.8-windows-x86_64/bin/cmake.exe'
$source = Join-Path $ProjectRoot 'dependencies/acados-v054'
$output = Join-Path $ProjectRoot 'buildVEOS/linux'
$build = Join-Path $output 'acados'
$install = Join-Path $output 'install'
$toolchain = Join-Path $PSScriptRoot 'Toolchain-dSpaceVEOS-Linux.cmake'
$compiler = 'C:/Program Files/Common Files/dSPACE/GCC/10.3_lx/x86_64-linux-gnu/bin/x86_64-linux-gnu-gcc.exe'
foreach ($file in @($cmake,$toolchain,$compiler)) {
    if (!(Test-Path -LiteralPath $file)) { throw "Missing prerequisite: $file" }
}
New-Item -ItemType Directory -Path $output -Force | Out-Null
& $cmake -S $source -B $build -G 'MinGW Makefiles' "-DCMAKE_TOOLCHAIN_FILE=$toolchain" `
    "-DCMAKE_INSTALL_PREFIX=$install" "-DACADOS_INSTALL_DIR=$install" `
    -DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF -DBLASFEO_TARGET=GENERIC `
    -DHPIPM_TARGET=GENERIC -DACADOS_WITH_OPENMP=OFF -DACADOS_EXAMPLES=OFF `
    -DACADOS_UNIT_TESTS=OFF -DBLASFEO_EXAMPLES=OFF -DEXT_DEP=OFF
if ($LASTEXITCODE -ne 0) { throw 'Linux acados configuration failed' }
& $cmake --build $build --parallel $Jobs
if ($LASTEXITCODE -ne 0) { throw 'Linux acados compilation failed' }
& $cmake --install $build
if ($LASTEXITCODE -ne 0) { throw 'Linux acados installation failed' }
foreach ($name in @('libacados.a','libhpipm.a','libblasfeo.a')) {
    if (!(Test-Path -LiteralPath (Join-Path $install "lib/$name"))) { throw "Missing $name" }
}
$record = [ordered]@{
    target = 'VEOS_LINUX64_GCC'; board = 'HostPCLinux64'; compiler = $compiler
    triple = (& $compiler -dumpmachine).Trim()
    compilerVersion = (& $compiler -dumpfullversion).Trim()
    acadosSource = $source; builtUtc = [DateTime]::UtcNow.ToString('o'); install = $install
}
$record | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $output 'toolchain_manifest.json') -Encoding utf8
# Publish target selection only after all libraries are present.
$selection = [ordered]@{target = 'VEOS_LINUX64_GCC'; installSubdirectory = 'linux/install'}
$selection | ConvertTo-Json | Set-Content -LiteralPath (Join-Path $ProjectRoot 'buildVEOS/veos_target.json') -Encoding utf8
$generated = Join-Path $ProjectRoot 'buildVEOS/c_generated_code'
if (!(Test-Path -LiteralPath $generated)) { throw 'Controller sources must first be imported into buildVEOS/c_generated_code' }
Copy-Item -LiteralPath (Join-Path $PSScriptRoot 'rtwmakecfg_veos.m') -Destination (Join-Path $generated 'rtwmakecfg.m') -Force
Write-Host "Linux VEOS libraries installed in $install"
Write-Host 'DSRT hook now selects Linux; the Windows MATLAB MEX is unchanged.'
