pushd "%CD%"

set vc_ver=vc15
set config=Release_MD
set platform=Win32

cd /d "%~dp0"
call BuildZLib.bat

popd