pushd "%CD%"

cd /d %~dp0
set outDir=%~dp0\..\out
mkdir %outDir%

rem x64 release
cd /d %~dp0
copy /Y %~dp0\..\deps\lib\x64\Release\*.* %~dp0\..\deps\lib\
devenv %~dp0\build_x64_vc10\lib\libcurl.vcxproj /build "Release|x64" /project %~dp0\build_x64_vc10\lib\libcurl.vcxproj
mkdir %outDir%\lib\x64\Release
copy /Y %~dp0\..\deps\lib\x64\Release\*.* %outDir%\lib\x64\Release
copy /Y %~dp0\build_x64_vc10\lib\Release\libcurl.lib %outDir%\lib\x64\Release\libcurl.lib

rem x64 debug
cd /d %~dp0
copy /Y %~dp0\..\deps\lib\x64\Debug\*.* %~dp0\..\deps\lib\
devenv %~dp0\build_x64_vc10\lib\libcurl.vcxproj /build "Debug|x64" /project %~dp0\build_x64_vc10\lib\libcurl.vcxproj
mkdir %outDir%\lib\x64\Debug
copy /Y %~dp0\..\deps\lib\x64\Debug\*.* %outDir%\lib\x64\Debug
copy /Y %~dp0\build_x64_vc10\lib\Debug\libcurl-d.lib %outDir%\lib\x64\Debug\libcurl.lib

rem include
mkdir %outDir%\include
echo D | xcopy /Y %~dp0\..\deps\openssl-1.0.2o\out\include\openssl %outDir%\include\openssl
copy /Y %~dp0\..\deps\zlib-1.2.11\zconf.h %outDir%\include\
copy /Y %~dp0\..\deps\zlib-1.2.11\zlib.h %outDir%\include\
copy /Y %~dp0\..\deps\zlib-1.2.11\zutil.h %outDir%\include\
echo D | xcopy /Y %~dp0\include\curl %outDir%\include\curl

popd