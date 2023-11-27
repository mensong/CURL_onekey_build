pushd "%CD%"

set platform=debug-VC-WIN32
set crt=MDd

call BuildOpenSSL.bat

popd