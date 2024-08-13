@echo off

set ISOFile1=..\input\Lupin Disc 1 [J].iso
set ISOFile2=..\input\Lupin Disc 2 [J].iso
set ISOTargetSize=1459978240

if not exist "%ISOFile1%" (
	echo [INFO] "%ISOFile1%" was not found
	echo Did you name the ROM correctly and place it in the correct folder?
	echo Exiting in 10 seconds..
	C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
	exit /b 0
)

for %%F in ("%ISOFile1%") do (
    set "ISOSize=%%~zF"
)

if %ISOSize% neq %ISOTargetSize% (
    echo [INFO] "%ISOFile1%" has an incorrect size
    echo Are you using the uncompressed ROM?
    echo Exiting in 10 seconds..
    C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
    exit /b 0
)

set "script_dir=%~dp0"
set "lupinIII_root=%script_dir%.."
set "common_dir=%lupinIII_root%\src\common\fs\COMMON"
BinString.exe patch --source "%common_dir%" --filter sfil.bin --output "%common_dir%" --patch "%common_dir%" --encoding "shift jis" --verbose

echo [INFO] Compiling patches for Lupin Disc 1

bass\\win\\bass.exe ..\\src\\disc1\\Main.asm

echo [INFO] Patches compiled for Lupin Disc 1

if not exist "%ISOFile2%" (
	echo [INFO] "%ISOFile2%" was not found
	echo Did you name the ROM correctly and place it in the correct folder?
	echo Exiting in 10 seconds..
	C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
	exit /b 0
)

for %%F in ("%ISOFile2%") do (
    set "ISOSize=%%~zF"
)

if %ISOSize% neq %ISOTargetSize% (
    echo [INFO] "%ISOFile2%" was has an incorrect size
    echo Are you using the uncompressed ROM?
    echo Exiting in 10 seconds..
    C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
    exit /b 0
)

set VideoFile1=..\src\disc2\fs\movie\last_00.thp
set VideoFile2=..\src\disc2\fs\movie\last_01.thp
set VideoFile3=..\src\disc2\fs\movie\staff.thp

set VideoFile1Url="https://www.dropbox.com/scl/fi/oq936t6kvnt8rmshva2mc/last_00.thp?rlkey=sktjd3wckb9spd24a196zcgug"
set VideoFile2Url="https://www.dropbox.com/scl/fi/2rncno9d26gblhy7odk39/last_01.thp?rlkey=enz4kks0dkdbh39knaiepolxx"
set VideoFile3Url=

if not exist "%VideoFile1%" (
    echo [INFO] Video files not found
    echo Downloading them now..
    curl -L -o "%VideoFile1%" "%VideoFile1Url%"
    curl -L -o "%VideoFile2%" "%VideoFile2Url%"
)

echo [INFO] Compiling patches for Lupin Disc 2

bass\\win\\bass.exe ..\\src\\disc2\\Main.asm

echo [INFO] Patches compiled for Lupin Disc 2

echo ---------- 
echo Finished!
echo ----------
pause