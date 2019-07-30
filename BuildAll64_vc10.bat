call "%VS100COMNTOOLS%\..\..\VC\bin\x86_amd64\vcvarsx86_amd64.bat" %2
set VisualStudioVersion=10.0

pushd "%CD%"

cd /d %~dp0
call deps\BuildDeps64_vc10.bat

cd /d %~dp0
call curl-7.60.0\BuildCurl64_vc10.bat

popd

pause