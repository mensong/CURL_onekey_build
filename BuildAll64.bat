call "%VS140COMNTOOLS%\..\..\VC\bin\amd64_x86\vcvarsamd64_x86.bat" %2
set VisualStudioVersion=14.0

pushd "%CD%"

cd /d %~dp0
call deps\BuildDeps64.bat

cd /d %~dp0
call curl-7.60.0\BuildCurl64.bat

popd

pause