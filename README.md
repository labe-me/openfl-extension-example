openfl-extension-example
========================

This extension was initialized using:

  openfl create extension TestExtension

To compile ndlls:

  cd project
  haxelib run hxcpp Build.xml
  haxelib run hxcpp Build.xml -Dandroid
  haxelib run hxcpp Build.xml -Diphoneos -DHXCPP_ARMV7
  haxelib run hxcpp Build.xml -Diphonesim
  
Add the extension to haxelib:

  haxelib dev TestExtension PATH_TO_THE_EXTENSION_ROOT
  
Usage:

  see TestApp
  
  
