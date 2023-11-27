pushd "%CD%"

rem ======================================================DEBUG=========================================================
cd /d %~dp0
set outDir=%~dp0\out\zlib\x64
mkdir %outDir%
rem ±‡“Îzlib
cd /d "%~dp0\zlib-1.2.11\win32"
set crt=MTd
nmake -f Makefile64.msc clean
nmake -f Makefile64.msc CRT=%crt%
set outLib=%outDir%\%crt%\lib
set outInc=%outDir%\%crt%\include
mkdir "%outLib%"
mkdir "%outInc%"
copy /Y zlib.lib "%outLib%\zlib_a.lib"
copy /Y "..\*.h" "%outInc%\"


popd