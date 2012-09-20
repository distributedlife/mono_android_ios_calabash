nohup /Users/rboucher/projects/android-sdk-macosx/tools/emulator -avd hardware_intel &
cd MonoForAndroidApplication/
xbuild /t:SignAndroidPackage /p:Configuration=Debug
cd ..
calabash-android run MonoForAndroidApplication/bin/Debug/MonoForAndroidApplication.MonoForAndroidApplication-Signed.apk 
PSID1=`ps -ef | grep "[h]ardware_intel" -m 01 | awk '{print $2}'`
kill -9 $PSID1
