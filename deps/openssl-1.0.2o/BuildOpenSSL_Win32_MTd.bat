pushd "%CD%"

set platform=debug-VC-WIN32
set crt=MTd

call BuildOpenSSL.bat

popd