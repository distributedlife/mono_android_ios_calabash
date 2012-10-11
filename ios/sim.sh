export DYLD_INSERT_LIBRARIES=;
rm -rf bin
rm -rf obj
/Applications/MonoDevelop.app/Contents/MacOS/mdtool build
cucumber
