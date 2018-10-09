pushd "%CD%"

cd /d %~dp0
set outDir=%~dp0\..\out
mkdir %outDir%

rem x86 release
cd /d %~dp0
copy /Y %~dp0\..\deps\lib\x86\Release\*.* %~dp0\..\deps\lib\
devenv %~dp0\build_x86\lib\libcurl.vcxproj /build "Release|Win32" /project %~dp0\build_x86\lib\libcurl.vcxproj
mkdir %outDir%\lib\x86\Release
copy /Y %~dp0\..\deps\lib\x86\Release\*.* %outDir%\lib\x86\Release
copy /Y %~dp0\build_x86\lib\Release\libcurl.lib %outDir%\lib\x86\Release\libcurl.lib

rem x86 debug
cd /d %~dp0
copy /Y %~dp0\..\deps\lib\x86\Debug\*.* %~dp0\..\deps\lib\
devenv %~dp0\build_x86\lib\libcurl.vcxproj /build "Debug|Win32" /project %~dp0\build_x86\lib\libcurl.vcxproj
mkdir %outDir%\lib\x86\Debug
copy /Y %~dp0\..\deps\lib\x86\Debug\*.* %outDir%\lib\x86\Debug
copy /Y %~dp0\build_x86\lib\Debug\libcurl-d.lib %outDir%\lib\x86\Debug\libcurl.lib

rem include
mkdir %outDir%\include
echo D | xcopy /Y %~dp0\..\deps\openssl-1.0.2o\out\include\openssl %outDir%\include\openssl
copy /Y %~dp0\..\deps\zlib-1.2.11\zconf.h %outDir%\include\
copy /Y %~dp0\..\deps\zlib-1.2.11\zlib.h %outDir%\include\
copy /Y %~dp0\..\deps\zlib-1.2.11\zutil.h %outDir%\include\
echo D | xcopy /Y %~dp0\include\curl %outDir%\include\curl

popd