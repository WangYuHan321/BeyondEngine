#-------------------------------------------------------------------
# This file is part of the CMake build system for Beyond
#
# The contents of this file are placed in the public domain. Feel
# free to make use of it in any way you like.
#-------------------------------------------------------------------

#######################################################################
# Find all necessary and optional Beyond dependencies
#######################################################################

# OGRE_DEPENDENCIES_DIR can be used to specify a single base
# folder where the required dependencies may be found.
# set(BEYOND_DEPENDENCIES_DIR "${PROJECT_BINARY_DIR}/Dependencies" CACHE PATH "Path to prebuilt Beyond dependencies")
# message(STATUS "DEPENDENCIES_DIR: ${BEYOND_DEPENDENCIES_DIR}")

# set(BEYONDDEPS_PATH "${BEYOND_DEPENDENCIES_DIR}")
# set(BEYOND_DEP_SEARCH_PATH "${BEYOND_DEPENDENCIES_DIR}")

# message(STATUS "Building pugixml")
# file(DOWNLOAD
	# https://github.com/zeux/pugixml/releases/download/v1.14/pugixml-1.14.tar.gz
	# ${PROJECT_BINARY_DIR}/pugixml-1.14.tar.gz)
# execute_process(COMMAND ${CMAKE_COMMAND}
	# -E tar xf pugixml-1.14.tar.gz WORKING_DIRECTORY ${PROJECT_BINARY_DIR})
# execute_process(COMMAND ${BUILD_COMMAND_COMMON}
	# -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE # this will be linked into a shared lib
	# ${PROJECT_BINARY_DIR}/pugixml-1.14
	# WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/pugixml-1.14)
# execute_process(COMMAND ${CMAKE_COMMAND}
	# --build ${PROJECT_BINARY_DIR}/pugixml-1.14 ${BUILD_COMMAND_OPTS})

# #find_package(Freetype)
# message(STATUS "Building freetype")
# file(DOWNLOAD
	# https://download.savannah.gnu.org/releases/freetype/freetype-2.13.2.tar.gz
	# ${PROJECT_BINARY_DIR}/freetype-2.13.2.tar.gz)
# execute_process(COMMAND ${CMAKE_COMMAND}
	# -E tar xf freetype-2.13.2.tar.gz WORKING_DIRECTORY ${PROJECT_BINARY_DIR})
# execute_process(COMMAND ${BUILD_COMMAND_COMMON}
	# -DBUILD_SHARED_LIBS=${BEYONDDEPS_SHARED}
	# -DCMAKE_DISABLE_FIND_PACKAGE_PNG=TRUE # disable third-party deps
	# -DCMAKE_DISABLE_FIND_PACKAGE_HarfBuzz=TRUE
	# -DCMAKE_DISABLE_FIND_PACKAGE_BZip2=TRUE
	# -DCMAKE_DISABLE_FIND_PACKAGE_BrotliDec=TRUE
	# # workaround for broken iOS toolchain in freetype
	# -DPROJECT_SOURCE_DIR=${PROJECT_BINARY_DIR}/freetype-2.13.2
	# ${PROJECT_BINARY_DIR}/freetype-2.13.2
	# WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/freetype-2.13.2/objs)
# execute_process(COMMAND ${CMAKE_COMMAND}
	# --build ${PROJECT_BINARY_DIR}/freetype-2.13.2/objs ${BUILD_COMMAND_OPTS})

# if(MSVC OR MINGW OR SKBUILD) # other platforms dont need this
	# message(STATUS "Building SDL2")
	# file(DOWNLOAD
		# https://libsdl.org/release/SDL2-2.30.4.tar.gz
		# ${PROJECT_BINARY_DIR}/SDL2-2.30.4.tar.gz)
	# execute_process(COMMAND ${CMAKE_COMMAND} 
		# -E tar xf SDL2-2.30.4.tar.gz WORKING_DIRECTORY ${PROJECT_BINARY_DIR})
	# execute_process(COMMAND ${CMAKE_COMMAND}
		# -E make_directory ${PROJECT_BINARY_DIR}/SDL2-build)
	# execute_process(COMMAND ${BUILD_COMMAND_COMMON}
		# -DSDL_STATIC=FALSE
		# -DCMAKE_INSTALL_LIBDIR=lib
		# ${PROJECT_BINARY_DIR}/SDL2-2.30.4
		# WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/SDL2-build)
	# execute_process(COMMAND ${CMAKE_COMMAND}
		# --build ${PROJECT_BINARY_DIR}/SDL2-build ${BUILD_COMMAND_OPTS})
# endif()

# if(MSVC OR MINGW OR SKBUILD) # other platforms dont need this
	# message(STATUS "Building zlib") # only needed for Assimp
	# file(DOWNLOAD
	# https://github.com/madler/zlib/releases/download/v1.3.1/zlib-1.3.1.tar.gz
	# ${PROJECT_BINARY_DIR}/zlib-1.3.1.tar.gz
	# EXPECTED_HASH SHA256=9a93b2b7dfdac77ceba5a558a580e74667dd6fede4585b91eefb60f03b72df23)
  # execute_process(COMMAND ${CMAKE_COMMAND}
	  # -E tar xf zlib-1.3.1.tar.gz WORKING_DIRECTORY ${PROJECT_BINARY_DIR})
  # execute_process(COMMAND ${BUILD_COMMAND_COMMON}
	  # -DBUILD_SHARED_LIBS=${OGREDEPS_SHARED}
	  # ${PROJECT_BINARY_DIR}/zlib-1.3.1
	  # WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/zlib-1.3.1)
  # execute_process(COMMAND ${CMAKE_COMMAND}
	  # --build ${PROJECT_BINARY_DIR}/zlib-1.3.1 ${BUILD_COMMAND_OPTS})

  # message(STATUS "Building Assimp")
    # file(DOWNLOAD
	# https://github.com/assimp/assimp/archive/refs/tags/v5.4.0.tar.gz
	# ${PROJECT_BINARY_DIR}/v5.4.0.tar.gz)
  # execute_process(COMMAND ${CMAKE_COMMAND}
	  # -E tar xf v5.4.0.tar.gz WORKING_DIRECTORY ${PROJECT_BINARY_DIR})
  # execute_process(COMMAND ${BUILD_COMMAND_COMMON}
	  # -DZLIB_ROOT=${OGREDEPS_PATH}
	  # -DBUILD_SHARED_LIBS=OFF
	  # -DASSIMP_BUILD_TESTS=OFF
	  # -DASSIMP_NO_EXPORT=TRUE
	  # -DASSIMP_BUILD_OGRE_IMPORTER=OFF
	  # -DASSIMP_BUILD_ASSIMP_TOOLS=OFF
	  # ${PROJECT_BINARY_DIR}/assimp-5.4.0
	  # WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/assimp-5.4.0)
  # execute_process(COMMAND ${CMAKE_COMMAND}
	# --build ${PROJECT_BINARY_DIR}/assimp-5.4.0 ${BUILD_COMMAND_OPTS})
# endif()

# message(STATUS "Building Bullet")
	# file(DOWNLOAD
	# https://github.com/bulletphysics/bullet3/archive/refs/tags/3.25.tar.gz
	# ${PROJECT_BINARY_DIR}/3.25.tar.gz)
# execute_process(COMMAND ${CMAKE_COMMAND}
	# -E tar xf 3.25.tar.gz WORKING_DIRECTORY ${PROJECT_BINARY_DIR})
# execute_process(COMMAND ${BUILD_COMMAND_COMMON}
	# -DBUILD_SHARED_LIBS=OFF
	# -DINSTALL_LIBS=ON
	# -DCMAKE_POSITION_INDEPENDENT_CODE=ON
	# -DUSE_MSVC_RUNTIME_LIBRARY_DLL=ON
	# -DBUILD_PYBULLET=OFF
	# -DUSE_DOUBLE_PRECISION=OFF
	# -DBUILD_CPU_DEMOS=OFF
	# -DBUILD_BULLET2_DEMOS=OFF
	# -DBUILD_EXTRAS=OFF
	# -DBUILD_EGL=OFF
	# -DBUILD_ENET=OFF
	# -DBUILD_UNIT_TESTS=OFF
	# -DCMAKE_RELWITHDEBINFO_POSTFIX= # fixes FindBullet on MSVC
	# -DBUILD_CLSOCKET=OFF
	# ${PROJECT_BINARY_DIR}/bullet3-3.25
	# WORKING_DIRECTORY ${PROJECT_BINARY_DIR}/bullet3-3.25)
# execute_process(COMMAND ${CMAKE_COMMAND}
	# --build ${PROJECT_BINARY_DIR}/bullet3-3.25 ${BUILD_COMMAND_OPTS})
# set(BULLET_ROOT ${BEYONDDEPS_PATH})



