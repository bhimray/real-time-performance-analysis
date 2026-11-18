# Candidate toolchain for a Linux x86-64 SCALEXIO target.
# Confirm the compiler version against the ConfigurationDesk application build.
set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR x86_64)

set(DSPACE_CFD_ROOT
    "C:/Program Files/Common Files/dSPACE/CFD Compiler 26.1")
list(APPEND CMAKE_TRY_COMPILE_PLATFORM_VARIABLES DSPACE_CFD_ROOT)

set(_dspace_target "${DSPACE_CFD_ROOT}/target/x86_64-linux-gnu")
set(_dspace_bin "${_dspace_target}/bin")
set(_dspace_prefix "${_dspace_bin}/x86_64-linux-gnu-")

foreach(_tool gcc g++ ar ranlib)
    if(NOT EXISTS "${_dspace_prefix}${_tool}.exe")
        message(FATAL_ERROR "Missing cross-tool: ${_dspace_prefix}${_tool}.exe")
    endif()
endforeach()

set(CMAKE_C_COMPILER "${_dspace_prefix}gcc.exe")
set(CMAKE_CXX_COMPILER "${_dspace_prefix}g++.exe")
set(CMAKE_ASM_COMPILER "${_dspace_prefix}gcc.exe")
set(CMAKE_AR "${_dspace_prefix}ar.exe")
set(CMAKE_RANLIB "${_dspace_prefix}ranlib.exe")

set(CMAKE_FIND_ROOT_PATH "${_dspace_target}")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build static libraries")
set(BLASFEO_TARGET GENERIC CACHE STRING "Portable initial BLASFEO target")
set(HPIPM_TARGET GENERIC CACHE STRING "HPIPM target")
set(ACADOS_WITH_OPENMP OFF CACHE BOOL "Initial single-threaded solver build")
