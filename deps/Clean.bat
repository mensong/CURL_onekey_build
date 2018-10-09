pushd "%CD%"

cd /d %~dp0
rd /S /Q lib
rd /S /Q include
rd /S /Q openssl-1.0.2o\out
rd /S /Q openssl-1.0.2o\out32
rd /S /Q openssl-1.0.2o\out32.dbg
rd /S /Q openssl-1.0.2o\tmp32
rd /S /Q openssl-1.0.2o\tmp32.dbg

rd /S /Q zlib-1.2.11\contrib\vstudio\vc14\x64
rd /S /Q zlib-1.2.11\contrib\vstudio\vc14\x86
del /F zlib-1.2.11\contrib\vstudio\vc14\zlibvc.VC.db

popd