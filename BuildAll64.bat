call "%VS140COMNTOOLS%\..\..\VC\bin\x86_amd64\vcvarsx86_amd64.bat" %2
set VisualStudioVersion=14.0

pushd "%CD%"

call Clean.bat

cd /d %~dp0
call deps\BuildDeps64.bat

cd /d %~dp0
call curl-7.60.0\BuildCurl64.bat

popd

pause