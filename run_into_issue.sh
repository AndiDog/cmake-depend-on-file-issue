#!/usr/bin/env bash
set -e
[ -e mysubdir ] || { >&2 echo Wrong directory; exit 1; }
rm -rf .build
mkdir .build
(cd .build && cmake -GNinja .. && ninja)
ls -la mysubdir/common.py .build/mysubdir/M*
sleep 62 # overlong breaks...
echo "`date` TOUCH"
touch mysubdir/common.py
sleep 62 # ...to see the file times clearly
echo "`date` BUILD AGAIN"
(cd .build && ninja)
ls -la mysubdir/common.py .build/mysubdir/M*
echo "`date` FINISHED"
