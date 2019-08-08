pushd "%CD%"

cd /d %~dp0
rd /S /Q lib
rd /S /Q include
rd /S /Q openssl-1.0.2o\out
rd /S /Q openssl-1.0.2o\out32
rd /S /Q openssl-1.0.2o\out32.dbg
rd /S /Q openssl-1.0.2o\tmp32
rd /S /Q openssl-1.0.2o\tmp32.dbg
del /F openssl-1.0.2o\Makefile
del /F openssl-1.0.2o\Makefile.bak
del /F openssl-1.0.2o\MINFO
del /F openssl-1.0.2o\ms\MINFO
del /F openssl-1.0.2o\ms\nt.mak
del /F openssl-1.0.2o\ms\ntdll.mak
del /F openssl-1.0.2o\ms\uptable.asm
del /F openssl-1.0.2o\ms\uptable.obj
del /F openssl-1.0.2o\crypto\buildinf.h
del /F openssl-1.0.2o\crypto\opensslconf.h

rd /S /Q zlib-1.2.11\contrib\vstudio\vc9\x64
rd /S /Q zlib-1.2.11\contrib\vstudio\vc9\x86
del /F zlib-1.2.11\contrib\vstudio\vc9\zlibvc.ncb

rd /S /Q zlib-1.2.11\contrib\vstudio\vc10\x64
rd /S /Q zlib-1.2.11\contrib\vstudio\vc10\x86
del /F zlib-1.2.11\contrib\vstudio\vc10\zlibvc.sdf

rd /S /Q zlib-1.2.11\contrib\vstudio\vc11\x64
rd /S /Q zlib-1.2.11\contrib\vstudio\vc11\x86
del /F zlib-1.2.11\contrib\vstudio\vc11\zlibvc.sdf

rd /S /Q zlib-1.2.11\contrib\vstudio\vc12\x64
rd /S /Q zlib-1.2.11\contrib\vstudio\vc12\x86
del /F zlib-1.2.11\contrib\vstudio\vc12\zlibvc.sdf

rd /S /Q zlib-1.2.11\contrib\vstudio\vc14\x64
rd /S /Q zlib-1.2.11\contrib\vstudio\vc14\x86
del /F zlib-1.2.11\contrib\vstudio\vc14\zlibvc.VC.db

del /F zlib-1.2.11\contrib\masmx86\*.lst
del /F zlib-1.2.11\contrib\masmx86\*.obj
del /F zlib-1.2.11\contrib\masmx64\*.lst
del /F zlib-1.2.11\contrib\masmx64\*.obj

popd