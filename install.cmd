@echo off

cd /D bin
del /F /Q *.dll
cd ..

rem set PYTHON_VER_FULL=3.6.4
rem set PYTHON_VER=36

set SRC=https://github.com/hcmlab/ssi/raw/master/bin/x64/vc140/
set DST=bin\

rem %DST%wget.exe https://www.python.org/ftp/python/%PYTHON_VER_FULL%/python-%PYTHON_VER_FULL%-embed-amd64.zip -O %DST%python-%PYTHON_VER_FULL%-embed-amd64.zip
rem %DST%7za.exe x %DST%python-%PYTHON_VER_FULL%-embed-amd64.zip -aoa -o%DST%
rem %DST%7za.exe x %DST%python%PYTHON_VER%.zip -aoa -o%DST%python%PYTHON_VER%
rem %DST%wget.exe -q %SRC%python%PYTHON_VER%._pth -O %DST%python%PYTHON_VER%._pth
rem %DST%wget.exe -q https://bootstrap.pypa.io/get-pip.py -O %DST%get-pip.py
rem %DST%python %DST%get-pip.py
rem %DST%python %DST%has_gpu.py > %DST%has_gpu.txt
rem set /p GPU=<%DST%has_gpu.txt
rem %DST%Scripts\pip.exe install tensorflow%GPU%==1.8.0
rem %DST%Scripts\easy_install.exe termcolor
rem %DST%Scripts\pip.exe install tensorflow%GPU%==1.8.0
rem %DST%Scripts\pip.exe install librosa
%DST%wget.exe %SRC%xmlpipe.exe -O %DST%xmlpipe.exe 
