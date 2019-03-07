#!/bin/bash

osType=`uname -s|tr '[A-Z]' '[a-z]'`
cpuType=`uname -m`

isX86=$( echo $cpuType | grep "x86" )
isArm=$( echo $cpuType | grep "arm" )
isArmV8=$( echo $cpuType | grep "aarch" )

if [ -n "${isX86}" ] ; then
  npm install node-pty-prebuild
elif [  -n "${isArm}" ] ;then
  npm install node-pty-prebuild
elif [  -n "${isArmV8}" ] ;then
  npm install node-pty
else
  echo "--------------------------------------不支持的系统类型---------------------------------------"
  exit 1
fi