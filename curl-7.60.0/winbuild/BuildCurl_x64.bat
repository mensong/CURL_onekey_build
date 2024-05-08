pushd "%CD%"

cd /d "%~dp0"

::set RTLIBCFG=MT or MD
::set DEBUG=yes or no
::set openssl_dir=openssl的路径
::set zlib_dir=zlib的路径

nmake /f Makefile64.vc mode=static RTLIBCFG=%RTLIBCFG% MACHINE=x64 ENABLE_WINSSL=no ENABLE_IDN=no ENABLE_SSPI=no DEBUG=%DEBUG% WITH_SSL=static WITH_ZLIB=static SSL_PATH="%openssl_dir%" ZLIB_PATH="%zlib_dir%"

popd