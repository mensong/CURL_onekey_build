pushd "%CD%"

set vc_ver=vc15
set config=Debug_MD
set platform=x64

cd /d "%~dp0"
call BuildZLib.bat

popd