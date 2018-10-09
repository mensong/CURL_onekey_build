pushd "%CD%"

cd /d %~dp0
call deps\BuildDeps64.bat

cd /d %~dp0
call curl-7.60.0\BuildCurl64.bat

popd