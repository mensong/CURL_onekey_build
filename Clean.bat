pushd "%CD%"

call deps\Clean.bat

cd /d %~dp0

rd /S /Q out

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

popd