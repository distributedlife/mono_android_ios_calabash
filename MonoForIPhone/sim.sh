rm -rf bin
rm -rf obj
/Applications/MonoDevelop.app/Contents/MacOS/mdtool build
#/Developer/MonoTouch/usr/bin/mtouch -sdkroot "/Applications/Xcode.app/Contents/Developer" -v --cache "/Users/rboucher/projects/HelloMono/MonoForIPhone/obj/Debug/mtouch-cache" --nomanifest --nosign -sim "/Users/rboucher/projects/HelloMono/MonoForIPhone/bin/iPhoneSimulator/Debug/MonoForIPhone.app" -r "/Developer/MonoTouch/usr/lib/mono/2.1/System.dll" -r "/Developer/MonoTouch/usr/lib/mono/2.1/System.Xml.dll" -r "/Developer/MonoTouch/usr/lib/mono/2.1/System.Core.dll" -r "/Developer/MonoTouch/usr/lib/mono/2.1/monotouch.dll" -debug -profiling -linksdkonly -sdk "5.1" -targetver "5.1" --armv7 "/Users/rboucher/projects/HelloMono/MonoForIPhone/bin/iPhoneSimulator/Debug/MonoForIPhone.exe"

cucumber
