pushd "%CD%"

set vc_ver=vc14
set config=Release
set platform=Win32

cd /d "%~dp0"
call BuildZLib.bat

popd