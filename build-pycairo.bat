
echo off
if "%PYTHON_INCLUDE%" == "" goto :end
if "%PYTHON_LIB%" == "" goto :end
if "%PYCAIRO_MOD_NAME%" == "" goto :end
echo on

nmake -nologo -f mk-zlib.nmake
nmake -nologo -f mk-libpng.nmake
nmake -nologo -f mk-libpixman.nmake
nmake -nologo -f mk-libcairo.nmake
nmake -nologo -f mk-pycairo.nmake
del *.obj
call build-test.bat
goto :finished

:end
echo "Please set variable: PYTHON_INCLUDE, PYTHON_LIB, PYCAIRO_MOD_NAME"
echo " example: set PYTHON_INCLUDE=%%LOCALAPPDATA%%\Programs\Python\Python310\include"
echo "          set PYTHON_LIB=%%LOCALAPPDATA%%\Programs\Python\Python310\libs\python310.lib"
echo "          set PYCAIRO_MOD_NAME=_cairo.cp310-win_amd64.pyd"

:finished
