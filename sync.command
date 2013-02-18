#!/bin/sh

working_dir="`dirname \"$0\"`"

echo 'Beginning src to IOS synchronization...'
cp -R $working_dir/src/* $working_dir/ios/www
echo 'IOS sync complete.'

echo 'Beginning src to ANDROID synchronization...'
cp -R $working_dir/src/* $working_dir/android/3CMobile/assets/www
echo 'ANDROID sync complete.'

#kill simulator if running
killall -s "iPhone Simulator" &> /dev/null
if [ $? -eq 0 ]; then
    killall -m -KILL "iPhone Simulator"
fi

#exit terminal window
exit 0