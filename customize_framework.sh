#!/bin/bash
#
# $1: dir for lewa
# $2: dir for original
#

APKTOOL=$PORT_ROOT/tools/apktool
 
if [ $2 = "out/framework" ];then
	echo "make framework_ext.jar"

    rm "framework_ext.jar.out/" -rf
	mkdir -p "framework_ext.jar.out/smali"
	touch "framework_ext.jar.out/apktool.yml"
	echo "version: 1.4.3" >> "framework_ext.jar.out/apktool.yml"
	echo "apkFileName: framework_ext.jar" >> "framework_ext.jar.out/apktool.yml"

	mv "out/framework/smali/lewa" "framework_ext.jar.out/smali"
	mv "out/framework/smali/android" "framework_ext.jar.out/smali"
fi

if [ $2 = "$BUILD_OUT/framework_ext" ]
then
	mv "$BUILD_OUT/$SEP_FRAME/smali/lewa/"  "$BUILD_OUT/framework_ext/smali/lewa"
fi
