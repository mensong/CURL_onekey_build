pushd "%CD%"

set platform=VC-WIN64A
set crt=MT

call BuildOpenSSL.bat

popd