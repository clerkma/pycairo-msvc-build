# pycairo-msvc-build
Scripts on MSVC build of pycairo
# requirement

* Visual Studio (tested, VS 2019)
* Python 3.8+ (tested, Python 3.10, amd64)

# build steps

(From my enviroment)
```
set PYTHON_INCLUDE=%%LOCALAPPDATA%%\Programs\Python\Python310\include
set PYTHON_LIB=%%LOCALAPPDATA%%\Programs\Python\Python310\libs\python310.lib
set PYCAIRO_MOD_NAME=_cairo.cp310-win_amd64.pyd
build-pycairo.bat
```
