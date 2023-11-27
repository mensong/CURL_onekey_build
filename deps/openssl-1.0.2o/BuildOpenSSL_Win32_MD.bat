pushd "%CD%"

set platform=VC-WIN32
set crt=MD

call BuildOpenSSL.bat

popd