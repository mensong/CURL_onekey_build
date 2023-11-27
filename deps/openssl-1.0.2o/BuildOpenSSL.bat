pushd "%CD%"

::set platform=VC-WIN64A
::set crt=MD

cd /d %~dp0
set outDir=%~dp0\out\%platform%\%crt%
mkdir "%outDir%"

perl Configure %platform% no-asm --crt=%crt% --prefix="%outDir%"

echo %platform%| findstr "64" >nul && (
    call ms\do_win64a
) || (
    call ms\do_ms
)

nmake -f ms\nt.mak
nmake -f ms\nt.mak install
nmake -f ms\nt.mak clean

popd