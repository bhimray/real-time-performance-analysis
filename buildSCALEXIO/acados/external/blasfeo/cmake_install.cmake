# Install script for directory: C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:\Users\bxr240009\Downloads\bim\real-time-performance-analysis\buildSCALEXIO\install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Program Files/Common Files/dSPACE/CFD Compiler 26.1/target/x86_64-linux-gnu/bin/x86_64-linux-gnu-objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/buildSCALEXIO/acados/external/blasfeo/libblasfeo.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/blasfeo/blasfeoConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/blasfeo/blasfeoConfig.cmake"
         "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/buildSCALEXIO/acados/external/blasfeo/CMakeFiles/Export/72054556e4da1e16364482af4943b427/blasfeoConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/blasfeo/blasfeoConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/cmake/blasfeo/blasfeoConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/blasfeo" TYPE FILE FILES "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/buildSCALEXIO/acados/external/blasfeo/CMakeFiles/Export/72054556e4da1e16364482af4943b427/blasfeoConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake/blasfeo" TYPE FILE FILES "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/buildSCALEXIO/acados/external/blasfeo/CMakeFiles/Export/72054556e4da1e16364482af4943b427/blasfeoConfig-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/blasfeo/include" TYPE FILE FILES
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_align.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_block_size.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_common.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_aux.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_aux_ext_dep.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_aux_ext_dep_ref.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_aux_old.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_aux_ref.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_aux_test.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_blas.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_blas_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_blasfeo_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_blasfeo_api_ref.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_blasfeo_hp_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_blasfeo_ref_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_d_kernel.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_i_aux_ext_dep.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_m_aux.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_memory.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_naming.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_processor_features.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_aux.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_aux_ext_dep.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_aux_ext_dep_ref.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_aux_old.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_aux_ref.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_aux_test.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_blas.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_blas_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_blasfeo_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_blasfeo_api_ref.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_blasfeo_ref_api.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_s_kernel.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_stdlib.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_target.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_timing.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/blasfeo_v_aux_ext_dep.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/d_blas.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/d_blas_64.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/s_blas.h"
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/dependencies/acados-v054/external/blasfeo/include/s_blas_64.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/buildSCALEXIO/acados/external/blasfeo/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
