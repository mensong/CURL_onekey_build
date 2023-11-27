pushd "%CD%"

set platform=VC-WIN32
set crt=MT

call BuildOpenSSL.bat

popd