#! /bin/bash
swift build
cp -rf .build/x86_64-apple-macosx/debug/stylesheetHelper Bin
cp -rf .build/x86_64-apple-macosx/debug/stylesheetHelper /usr/local/bin
tar -czf Bin/stylesheethelper.tar.gz Bin/stylesheetHelper
shasum -a 256 Bin/stylesheethelper.tar.gz
