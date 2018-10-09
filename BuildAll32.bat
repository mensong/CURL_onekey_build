pushd "%CD%"

cd /d %~dp0
call deps\BuildDeps32.bat

cd /d %~dp0
call curl-7.60.0\BuildCurl32.bat

popd