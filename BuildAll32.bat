@For /F "Skip=1" %%i in ('Wmic Logicaldisk Where "DriveType=3" Get Name') Do call "%%i\Program Files (x86)\Microsoft Visual Studio 14.0\VC\bin\x86_amd64\vcvarsx86_amd64.bat" %2
set VisualStudioVersion=14.0

pushd "%CD%"

cd /d %~dp0
call deps\BuildDeps32.bat

cd /d %~dp0
call curl-7.60.0\BuildCurl32.bat

popd

pause