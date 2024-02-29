pushd "%CD%"

set vc_ver=vc16
set config=Debug
set platform=Win32

cd /d "%~dp0"
call BuildZLib.bat

popd