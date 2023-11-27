pushd "%CD%"

set platform=debug-VC-WIN64A
set crt=MTd

call BuildOpenSSL.bat

popd