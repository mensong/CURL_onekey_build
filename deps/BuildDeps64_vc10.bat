pushd "%CD%"

rem ======================================================DEBUG=========================================================
cd /d %~dp0
set outDir=%~dp0\lib\x64\Debug
mkdir %outDir%

rem ±‡“Îopenssl
cd /d %~dp0
cd /d openssl-1.0.2o
perl Configure debug-VC-WIN64A no-asm --prefix=%CD%\out
call ms\do_win64a
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
nmake -f ms\nt.mak clean
copy /Y %CD%\out\lib\*.* %outDir%

rem ±‡“Îzlib
cd /d %~dp0\zlib-1.2.11
devenv %CD%\contrib\vstudio\vc10\zlibstat.vcxproj /build "Debug|x64" /project %CD%\contrib\vstudio\vc10\zlibstat.vcxproj
devenv %CD%\contrib\vstudio\vc10\zlibvc.vcxproj /build "Debug|x64" /project %CD%\contrib\vstudio\vc10\zlibvc.vcxproj
copy /Y %CD%\contrib\vstudio\vc10\x64\ZlibStatDebug\zlibstat.lib %outDir%
copy /Y %CD%\contrib\vstudio\vc10\x64\ZlibDllDebug\zlibwapi.lib %outDir%
rem ±‡“Îzlib
rem cd /d win32
rem nmake -f Makefile64.msc
rem copy /Y zlib.lib %outDir%\zlib_a.lib



rem =====================================================RELEASE========================================================
cd /d %~dp0
set outDir=%~dp0\lib\x64\Release
mkdir %outDir%

rem ±‡“Îopenssl
cd /d %~dp0
cd /d openssl-1.0.2o
perl Configure VC-WIN64A no-asm --prefix=%CD%\out
call ms\do_win64a
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
nmake -f ms\nt.mak clean
copy /Y %CD%\out\lib\*.* %outDir%

rem ±‡“Îzlib
cd /d %~dp0\zlib-1.2.11
devenv %CD%\contrib\vstudio\vc10\zlibstat.vcxproj /build "Release|x64" /project %CD%\contrib\vstudio\vc10\zlibstat.vcxproj
devenv %CD%\contrib\vstudio\vc10\zlibvc.vcxproj /build "Release|x64" /project %CD%\contrib\vstudio\vc10\zlibvc.vcxproj
copy /Y %CD%\contrib\vstudio\vc10\x64\ZlibStatRelease\zlibstat.lib %outDir%
copy /Y %CD%\contrib\vstudio\vc10\x64\ZlibDllRelease\zlibwapi.lib %outDir%
rem ±‡“Îzlib
rem cd /d win32
rem nmake -f Makefile64.msc
rem copy /Y zlib.lib %outDir%\zlib_a.lib



rem include
mkdir %~dp0\include
echo D | xcopy /Y %~dp0\openssl-1.0.2o\out\include\openssl %~dp0\include\openssl
copy /Y %~dp0\zlib-1.2.11\zconf.h %~dp0\include\
copy /Y %~dp0\zlib-1.2.11\zlib.h %~dp0\include\
copy /Y %~dp0\zlib-1.2.11\zutil.h %~dp0\include\

popd