pushd "%CD%"

rem ======================================================DEBUG=========================================================
cd /d %~dp0
set outDir=%~dp0\lib\x86\Debug
mkdir %outDir%

rem ±‡“Îopenssl
cd /d %~dp0
cd /d openssl-1.0.2o
perl Configure debug-VC-WIN32 no-asm --prefix=%CD%\out
call ms\do_ms
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
nmake -f ms\nt.mak clean
copy /Y %CD%\out\lib\*.* %outDir%

rem ±‡“Îzlib
cd /d %~dp0\zlib-1.2.11
devenv %CD%\contrib\vstudio\vc14\zlibstat.vcxproj /build "Debug|Win32" /project %CD%\contrib\vstudio\vc14\zlibstat.vcxproj
devenv %CD%\contrib\vstudio\vc14\zlibvc.vcxproj /build "Debug|Win32" /project %CD%\contrib\vstudio\vc14\zlibvc.vcxproj
copy /Y %CD%\contrib\vstudio\vc14\x86\ZlibStatDebug\zlibstat.lib %outDir%
copy /Y %CD%\contrib\vstudio\vc14\x86\ZlibDllDebug\zlibwapi.lib %outDir%
rem ±‡“Îzlib
rem cd /d win32
rem nmake -f Makefile.msc
rem copy /Y zlib.lib %outDir%\zlib_a.lib



rem =====================================================RELEASE========================================================
cd /d %~dp0
set outDir=%~dp0\lib\x86\Release
mkdir %outDir%

rem ±‡“Îopenssl
cd /d %~dp0
cd /d openssl-1.0.2o
perl Configure VC-WIN32 no-asm --prefix=%CD%\out
call ms\do_ms
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
nmake -f ms\nt.mak clean
copy /Y %CD%\out\lib\*.* %outDir%

rem ±‡“Îzlib
cd /d %~dp0\zlib-1.2.11
devenv %CD%\contrib\vstudio\vc14\zlibstat.vcxproj /build "Release|Win32" /project %CD%\contrib\vstudio\vc14\zlibstat.vcxproj
devenv %CD%\contrib\vstudio\vc14\zlibvc.vcxproj /build "Release|Win32" /project %CD%\contrib\vstudio\vc14\zlibvc.vcxproj
copy /Y %CD%\contrib\vstudio\vc14\x86\ZlibStatRelease\zlibstat.lib %outDir%
copy /Y %CD%\contrib\vstudio\vc14\x86\ZlibDllRelease\zlibwapi.lib %outDir%
rem ±‡“Îzlib
rem cd /d win32
rem nmake -f Makefile.msc
rem copy /Y zlib.lib %outDir%\zlib_a.lib




rem include
mkdir %~dp0\include
echo D | xcopy /Y %~dp0\openssl-1.0.2o\out\include\openssl %~dp0\include\openssl
copy /Y %~dp0\zlib-1.2.11\zconf.h %~dp0\include\
copy /Y %~dp0\zlib-1.2.11\zlib.h %~dp0\include\
copy /Y %~dp0\zlib-1.2.11\zutil.h %~dp0\include\

popd