cmake_minimum_required(VERSION 3.9)
project(TestLib)
message("VCPKG Target Triplet: ${VCPKG_TARGET_TRIPLET}")
message("Runtime identifier: ${FX_RUNTIME_DIR}")
set(CMAKE_VERBOSE_MAKEFILE ON)
include_directories("include")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_SOURCE_DIR}/../TestLibWrapper/runtimes/${FX_RUNTIME_DIR}/native")
file(GLOB SOURCE_FILES "src/*.cpp")
message("Source Files: ${SOURCE_FILES}")
add_library(TestLib SHARED ${SOURCE_FILES})

file(GLOB Headers "include/*.hpp")
if (APPLE)
  set_target_properties(TestLib PROPERTIES
      FRAMEWORK TRUE
      FRAMEWORK_VERSION CXX
      BUNDLE_IDENTIFIER com.TestFactory.TestLib
      XCODE_ATTRIBUTE_PRODUCT_BUNDLE_IDENTIFIER com.TestFactory.TestLib
      XCODE_ATTRIBUTE_CODE_SIGNING_ALLOWED "YES"
      XCODE_ATTRIBUTE_CLANG_ENABLE_MODULES "YES"
      XCODE_ATTRIBUTE_LD_RUNPATH_SEARCH_PATHS "@executable_path/Frameworks"
      MACOSX_FRAMEWORK_IDENTIFIER com.TestFactory.TestLib
      MACOSX_FRAMEWORK_INFO_PLIST ${CMAKE_SOURCE_DIR}/Info.plist
      PUBLIC_HEADER "${Headers}"
      XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "Apple Development"
      XCODE_ATTRIBUTE_DEVELOPMENT_TEAM "????"
      XCODE_EMBED_FRAMEWORKS_CODE_SIGN_ON_COPY		"YES"
      XCODE_EMBED_FRAMEWORKS_REMOVE_HEADERS_ON_COPY	"YES"
  )
endif()