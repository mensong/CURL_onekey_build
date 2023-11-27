
::set vc_ver=vc17
::set config=Debug
::set platform=x64

rem ±‡“Îzlib
set zlibstat_vcxproj=%~dp0\contrib\vstudio\%vc_ver%\zlibstat.vcxproj
devenv "%zlibstat_vcxproj%" /build "%config%|%platform%" /project "%zlibstat_vcxproj%"
set zlibvc_vcxproj=%~dp0\contrib\vstudio\%vc_ver%\zlibvc.vcxproj
devenv "%zlibvc_vcxproj%" /build "%config%|%platform%" /project "%zlibvc_vcxproj%"

set outDir=%~dp0\out\%vc_ver%\%platform%\%config%
mkdir "%outDir%\include"
copy /Y "%~dp0\*.h" "%outDir%\include\"
mkdir "%outDir%\lib"
copy /Y "%~dp0\contrib\vstudio\%vc_ver%\%platform%\%config%\zlibvc\zlibwapi.lib" "%outDir%\lib\"
copy /Y "%~dp0\contrib\vstudio\%vc_ver%\%platform%\%config%\zlibstat\zlibstat.lib" "%outDir%\lib\"
