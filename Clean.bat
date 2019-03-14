call "%VS140COMNTOOLS%\..\..\VC\bin\vcvars32.bat" %2
set VisualStudioVersion=14.0

pushd "%CD%"

call deps\Clean.bat

cd /d %~dp0

rem rd /S /Q out

del /F curl-7.60.0\build_x86\CURL.VC.db
rd /S /Q curl-7.60.0\build_x86\Debug
rd /S /Q curl-7.60.0\build_x86\Release
rd /S /Q curl-7.60.0\build_x86\Win32
rd /S /Q curl-7.60.0\build_x86\lib\Debug
rd /S /Q curl-7.60.0\build_x86\lib\Release
rd /S /Q curl-7.60.0\build_x86\lib\libcurl.dir

del /F curl-7.60.0\build_x64\CURL.VC.db
rd /S /Q curl-7.60.0\build_x64\Debug
rd /S /Q curl-7.60.0\build_x64\Release
rd /S /Q curl-7.60.0\build_x64\x64
rd /S /Q curl-7.60.0\build_x64\lib\Debug
rd /S /Q curl-7.60.0\build_x64\lib\Release
rd /S /Q curl-7.60.0\build_x64\lib\libcurl.dir

del ".\deps\openssl-1.0.2o\MINFO"
del ".\deps\openssl-1.0.2o\Makefile"
del ".\deps\openssl-1.0.2o\Makefile.bak"
del ".\deps\openssl-1.0.2o\crypto\opensslconf.h"
del ".\deps\openssl-1.0.2o\crypto\opensslconf.h.bak"
del ".\deps\openssl-1.0.2o\inc32\openssl\opensslconf.h"
del ".\deps\openssl-1.0.2o\ms\nt.mak"
del ".\deps\openssl-1.0.2o\ms\uptable.asm"

cd /d ".\deps\zlib-1.2.11\win32"
nmake -f Makefile.msc clean

popd