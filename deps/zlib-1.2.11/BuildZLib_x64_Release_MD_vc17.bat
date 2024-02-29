pushd "%CD%"

set vc_ver=vc17
set config=Release_MD
set platform=x64

cd /d "%~dp0"
call BuildZLib.bat

popd