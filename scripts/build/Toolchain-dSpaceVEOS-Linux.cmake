# Match dSPACE VEOS 2026-A HostPCLinux64/GCC; runs on Windows.
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)
set(DSPACE_LINUX_GCC_ROOT
    "C:/Program Files/Common Files/dSPACE/GCC/10.3_lx/x86_64-linux-gnu"
    CACHE PATH "dSPACE Linux cross-compiler")
set(DSPACE_MAKE
    "C:/Program Files/Common Files/dSPACE/GCC/14.2/x86_64/bin/mingw32-make.exe"
    CACHE FILEPATH "Windows build runner (does not select target compiler)")
list(APPEND CMAKE_TRY_COMPILE_PLATFORM_VARIABLES DSPACE_LINUX_GCC_ROOT DSPACE_MAKE)
foreach(tool gcc g++ ar ranlib nm objcopy objdump)
    if(NOT EXISTS "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-${tool}.exe")
        message(FATAL_ERROR "Missing Linux cross-tool: ${tool}")
    endif()
endforeach()
if(NOT EXISTS "${DSPACE_MAKE}")
    message(FATAL_ERROR "Missing Windows make runner: ${DSPACE_MAKE}")
endif()
execute_process(COMMAND "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-gcc.exe" -dumpmachine
    OUTPUT_VARIABLE _veos_triple OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE _veos_status)
if(NOT _veos_status EQUAL 0 OR NOT _veos_triple STREQUAL "x86_64-linux-gnu")
    message(FATAL_ERROR "Linux VEOS requires x86_64-linux-gnu; found '${_veos_triple}'")
endif()
execute_process(COMMAND "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-gcc.exe" -dumpfullversion
    OUTPUT_VARIABLE _veos_version OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE _veos_status)
if(NOT _veos_status EQUAL 0 OR NOT _veos_version STREQUAL "10.3.0")
    message(FATAL_ERROR "This toolchain is verified for GCC 10.3.0; found '${_veos_version}'")
endif()
set(CMAKE_C_COMPILER "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-gcc.exe")
set(CMAKE_CXX_COMPILER "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-g++.exe")
set(CMAKE_AR "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-ar.exe")
set(CMAKE_RANLIB "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-ranlib.exe")
set(CMAKE_NM "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-nm.exe")
set(CMAKE_OBJCOPY "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-objcopy.exe")
set(CMAKE_OBJDUMP "${DSPACE_LINUX_GCC_ROOT}/bin/x86_64-linux-gnu-objdump.exe")
set(CMAKE_MAKE_PROGRAM "${DSPACE_MAKE}" CACHE FILEPATH "Windows make")
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
# Same baseline CPU, floating-point, visibility and ABI options as the board.
set(CMAKE_C_FLAGS_INIT "-pipe -Wall -m64 -march=nocona -mtune=core2 -mfpmath=sse -msse3 -fno-strict-aliasing -fno-common -fPIC -fvisibility=hidden -D__SIL__ -D__GCC__ -D__X86_64_LINUX_GNU__ -D_GLIBCXX_USE_CXX11_ABI=0")
set(CMAKE_CXX_FLAGS_INIT "${CMAKE_C_FLAGS_INIT}")
set(CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG" CACHE STRING "VEOS release C flags" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG" CACHE STRING "VEOS release C++ flags" FORCE)
set(CMAKE_C_FLAGS_DEBUG "-Og -g3 -ggdb2 -D_DEBUG" CACHE STRING "VEOS debug C flags" FORCE)
set(CMAKE_CXX_FLAGS_DEBUG "-Og -g3 -ggdb2 -D_DEBUG" CACHE STRING "VEOS debug C++ flags" FORCE)
set(CMAKE_CXX_STANDARD 14)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Static Linux acados libraries")
set(BLASFEO_TARGET GENERIC CACHE STRING "Portable kernels")
set(HPIPM_TARGET GENERIC CACHE STRING "Portable kernels")
set(ACADOS_WITH_OPENMP OFF CACHE BOOL "No OpenMP runtime dependency")
