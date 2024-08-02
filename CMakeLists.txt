#-------------------------------------------------------------------
# This file is part of the CMake build system for Beyond
#     (Object-oriented Engine)
#
# The contents of this file are placed in the public domain. Feel
# free to make use of it in any way you like.
#-------------------------------------------------------------------

######################################################################
# Beyond BUILD SYSTEM
# Welcome to the CMake build system for Beyond.
# This is the main file where we prepare the general build environment
# and provide build configuration options.
######################################################################

cmake_minimum_required(VERSION 3.13.0)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

set(OGRE_WORK_DIR ${PROJECT_BINARY_DIR})

project(Beyond)

list(APPEND CMAKE_MODULE_PATH
	"${PROJECT_SOURCE_DIR}/CMake")

include(Dependencies)	
include(CMakeDependentOption)

if (NOT CMAKE_BUILD_TYPE)
  # CMake defaults to leaving CMAKE_BUILD_TYPE empty. This screws up
  # differentiation between debug and release builds.
  set(CMAKE_BUILD_TYPE "RelWithDebInfo" CACHE STRING "Choose the type of build, options are: None (CMAKE_CXX_FLAGS or CMAKE_C_FLAGS used) Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif ()

if (WIN32)
  # Create debug libraries with _d postfix
  set(CMAKE_DEBUG_POSTFIX "_d")
endif ()

option(BEYOND_BUILD_PLUGIN_GLSLANG "Build glslang plugin" TRUE)
option(BEYOND_BUILD_PLUGIN_STBI "Enable STBI image codec." TRUE)
option(BEYOND_BUILD_RENDERSYSTEM_D3D11 "Build Direct3D11 RenderSystem" TRUE)
option(BEYOND_BUILD_RENDERSYSTEM_VULKAN "Build Vulkan RenderSystem" TRUE)


set(BEYOND_LIBRARIES BeyondMain)

add_subdirectory(BeyondMain)