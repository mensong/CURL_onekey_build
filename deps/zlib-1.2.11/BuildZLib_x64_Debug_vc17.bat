pushd "%CD%"

set vc_ver=vc17
set config=Debug
set platform=x64

cd /d "%~dp0"
call BuildZLib.bat

popd