#start emulator (HARDCODED TO AN EMULATOR NAME; both here and below)
emulator -avd hardware_intel &

#clean & build
rm -rf test_servers
cd MonoForAndroidApplication/
rm -rf bin
rm -rf obj
xbuild /t:SignAndroidPackage /p:Configuration=Debug
cd ..

#run tests
calabash-android run MonoForAndroidApplication/bin/Debug/MonoForAndroidApplication.MonoForAndroidApplication-Signed.apk

#kill emulator
PSID1=`ps -ef | grep "[h]ardware_intel" -m 01 | awk '{print $2}'`
kill -9 $PSID1
