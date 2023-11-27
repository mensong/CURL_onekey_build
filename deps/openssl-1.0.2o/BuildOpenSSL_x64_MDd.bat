pushd "%CD%"

set platform=debug-VC-WIN64A
set crt=MDd

call BuildOpenSSL.bat

popd