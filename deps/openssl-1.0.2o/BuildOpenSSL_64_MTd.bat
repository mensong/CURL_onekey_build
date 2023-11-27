pushd "%CD%"

rem ======================================================DEBUG=========================================================
cd /d %~dp0
set outDir=%~dp0\out\openssl\x64
mkdir %outDir%
rem ±‡“Îopenssl
cd /d %~dp0
cd /d openssl-1.0.2o
set platform=debug-VC-WIN64A
set crt=MTd
perl Configure %platform% no-asm --crt=%crt% --prefix=%outDir%\%crt%
call ms\do_win64a
nmake -f ms\nt.mak
nmake -f ms\nt.mak install
nmake -f ms\nt.mak clean


popd