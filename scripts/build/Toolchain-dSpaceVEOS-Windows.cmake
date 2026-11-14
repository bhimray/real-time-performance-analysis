# Windows x86-64 VEOS: HostPC64/GCC in dSPACE 2026-A.
# AMD64 denotes the x86-64 ABI, including Intel Core Ultra processors.
# Do not use -march=native: keep compatibility with the VEOS board settings.
set(CMAKE_SYSTEM_NAME Windows)
set(CMAKE_SYSTEM_PROCESSOR AMD64)
set(DSPACE_GCC_ROOT "C:/Program Files/Common Files/dSPACE/GCC/14.2/x86_64"
    CACHE PATH "dSPACE Windows GCC installation")
list(APPEND CMAKE_TRY_COMPILE_PLATFORM_VARIABLES DSPACE_GCC_ROOT)
foreach(tool gcc g++ ar ranlib mingw32-make)
    if(NOT EXISTS "${DSPACE_GCC_ROOT}/bin/${tool}.exe")
        message(FATAL_ERROR "Missing dSPACE tool: ${DSPACE_GCC_ROOT}/bin/${tool}.exe")
    endif()
endforeach()
# Reject the Linux cross-compiler even if it is installed on this Windows PC.
execute_process(COMMAND "${DSPACE_GCC_ROOT}/bin/gcc.exe" -dumpmachine
    OUTPUT_VARIABLE _veos_triple OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE _veos_target_status)
if(NOT _veos_target_status EQUAL 0 OR NOT _veos_triple STREQUAL "x86_64-w64-mingw32")
    message(FATAL_ERROR "Windows VEOS requires x86_64-w64-mingw32; found '${_veos_triple}'")
endif()
execute_process(COMMAND "${DSPACE_GCC_ROOT}/bin/gcc.exe" -dumpfullversion
    OUTPUT_VARIABLE _veos_version OUTPUT_STRIP_TRAILING_WHITESPACE
    RESULT_VARIABLE _veos_version_status)
if(NOT _veos_version_status EQUAL 0 OR NOT _veos_version STREQUAL "14.2.0")
    message(FATAL_ERROR "This toolchain is verified for dSPACE GCC 14.2.0; found '${_veos_version}'")
endif()
set(CMAKE_C_COMPILER "${DSPACE_GCC_ROOT}/bin/gcc.exe")
set(CMAKE_CXX_COMPILER "${DSPACE_GCC_ROOT}/bin/g++.exe")
set(CMAKE_AR "${DSPACE_GCC_ROOT}/bin/ar.exe")
set(CMAKE_RANLIB "${DSPACE_GCC_ROOT}/bin/ranlib.exe")
set(CMAKE_NM "${DSPACE_GCC_ROOT}/bin/nm.exe")
set(CMAKE_OBJCOPY "${DSPACE_GCC_ROOT}/bin/objcopy.exe")
set(CMAKE_OBJDUMP "${DSPACE_GCC_ROOT}/bin/objdump.exe")
set(CMAKE_MAKE_PROGRAM "${DSPACE_GCC_ROOT}/bin/mingw32-make.exe" CACHE FILEPATH "Make")
# Match the instruction-set and aliasing options of the installed VEOS board.
set(CMAKE_C_FLAGS_INIT "-pipe -Wall -m64 -march=nocona -mtune=core2 -mfpmath=sse -fno-strict-aliasing -fno-omit-frame-pointer -D__SIL__ -D__GCC__")
set(CMAKE_CXX_FLAGS_INIT "${CMAKE_C_FLAGS_INIT}")
# Set these explicitly: CMake otherwise appends its default -O3 after _INIT.
set(CMAKE_C_FLAGS_RELEASE "-O2 -DNDEBUG" CACHE STRING "VEOS release C flags" FORCE)
set(CMAKE_CXX_FLAGS_RELEASE "-O2 -DNDEBUG" CACHE STRING "VEOS release C++ flags" FORCE)
set(CMAKE_C_FLAGS_DEBUG "-Og -g -D_DEBUG" CACHE STRING "VEOS debug C flags" FORCE)
set(CMAKE_CXX_FLAGS_DEBUG "-Og -g -D_DEBUG" CACHE STRING "VEOS debug C++ flags" FORCE)
set(CMAKE_CXX_STANDARD 14)
set(CMAKE_EXE_LINKER_FLAGS_INIT "-m64 -static-libgcc -static-libstdc++")
set(CMAKE_SHARED_LINKER_FLAGS_INIT "-m64 -static-libgcc -static-libstdc++")
# VEOS application-specific OS libraries and DLL image/map options belong to
# the final ASM application, not these three static numerical libraries.
set(CMAKE_POSITION_INDEPENDENT_CODE ON)
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Static acados libraries")
set(BLASFEO_TARGET GENERIC CACHE STRING "Portable BLASFEO kernels")
set(HPIPM_TARGET GENERIC CACHE STRING "Portable HPIPM kernels")
set(ACADOS_WITH_OPENMP OFF CACHE BOOL "No OpenMP runtime dependency")
