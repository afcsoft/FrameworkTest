#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/apple/FrameworkTest/native/out/ios-arm64
  echo Build\ all\ projects
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/apple/FrameworkTest/native/out/ios-arm64
  echo Build\ all\ projects
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/apple/FrameworkTest/native/out/ios-arm64
  echo Build\ all\ projects
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/apple/FrameworkTest/native/out/ios-arm64
  echo Build\ all\ projects
fi

