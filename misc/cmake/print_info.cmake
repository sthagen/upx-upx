#
# UPX "CMake" build file; see https://cmake.org/
# Copyright (C) Markus Franz Xaver Johannes Oberhumer
#

#***********************************************************************
# summary section
# print some info about the build configuration
#***********************************************************************

# generator
upx_print_var(CMAKE_GENERATOR_TOOLSET CMAKE_GENERATOR_PLATFORM)

# directories
if(NOT ",${CMAKE_BINARY_DIR}," STREQUAL ",${CMAKE_CURRENT_BINARY_DIR}," OR NOT ",${CMAKE_SOURCE_DIR}," STREQUAL ",${CMAKE_CURRENT_SOURCE_DIR},")
    upx_print_var(CMAKE_BINARY_DIR CMAKE_SOURCE_DIR CMAKE_CURRENT_BINARY_DIR CMAKE_CURRENT_SOURCE_DIR)
endif()

# system
upx_print_var(CMAKE_HOST_SYSTEM_NAME CMAKE_HOST_SYSTEM_VERSION CMAKE_HOST_SYSTEM_PROCESSOR)
upx_print_var(CMAKE_SYSTEM_NAME CMAKE_SYSTEM_VERSION CMAKE_SYSTEM_PROCESSOR)
upx_print_var(CMAKE_ANDROID_NDK CMAKE_ANDROID_NDK_VERSION CMAKE_ANDROID_STANDALONE_TOOLCHAIN)
upx_print_var(CMAKE_APPLE_SILICON_PROCESSOR CMAKE_OSX_DEPLOYMENT_TARGET CMAKE_OSX_SYSROOT)
upx_print_Var(CMAKE_CROSSCOMPILING CMAKE_CROSSCOMPILING_EMULATOR)

# binutils
upx_print_var(CMAKE_AR CMAKE_RANLIB)

# compilers
foreach(lang IN ITEMS ASM C CXX)
    upx_print_var(CMAKE_${lang}_COMPILER_LAUNCHER)
    upx_print_var(CMAKE_${lang}_COMPILER)
    upx_print_var(CMAKE_${lang}_COMPILER_ID)
    upx_print_var(CMAKE_${lang}_COMPILER_VERSION)
    upx_print_var(CMAKE_${lang}_COMPILER_FRONTEND_VARIANT )
    upx_print_var(CMAKE_${lang}_COMPILER_ARCHITECTURE_ID)
    upx_print_var(CMAKE_${lang}_PLATFORM_ID)
    upx_print_var(CMAKE_${lang}_COMPILER_ABI)
    upx_print_var(CMAKE_${lang}_COMPILER_TARGET)
endforeach()

# misc
upx_print_var(CMAKE_INTERPROCEDURAL_OPTIMIZATION CMAKE_POSITION_INDEPENDENT_CODE)

# shortcuts
upx_print_var(APPLE CLANG CYGWIN GNU_FRONTEND GNUC MINGW MSVC MSVC_FRONTEND MSVC_IDE MSVC_TOOLSET_VERSION MSVC_VERSION MSYS UNIX WIN32 WIN64)

# vim:set ft=cmake ts=4 sw=4 tw=0 et:
