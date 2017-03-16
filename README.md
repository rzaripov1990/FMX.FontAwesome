# FMX.FontAwesome
[FireMonkey] FontAwesome

## ANDROID
* Include `FMX.FontGlyphs.pas` and `FMX.FontGlyphs.Android.pas` to project
* Deploy font to project
![release/debug] (images/android.png)

## IOS
* Deploy font to project
![release/debug] (/images/ios.png)
* Create or Edit file `info.plist.TemplateiOS.xml`
```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
<%VersionInfoPListKeys%>
<%ExtraInfoPListKeys%>
	<key>UIAppFonts</key>
	<array>
		<string>FontAwesome.ttf</string>
 	</array>
</dict>
</plist>
```

## MACOS
* Deploy font to project
![release/debug] (/images/osx.png)

## WINDOWS
* Install font to system
