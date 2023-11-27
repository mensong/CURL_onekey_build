pushd "%CD%"

set platform=VC-WIN64A
set crt=MD

call BuildOpenSSL.bat

popd