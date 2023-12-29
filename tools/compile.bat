@echo off

set ISOFile1=..\input\Lupin Disc 1 [J].iso
set ISOFile2=..\input\Lupin Disc 2 [J].iso

if not exist "%ISOFile1%" (
	echo [INFO] "%ISOFile1%" was not found
	echo Did you name the ROM correctly and place it in the correct folder?
	echo Exiting in 10 seconds..
	C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
	exit /b 0
)

BinString.exe patch --source C:/Users/newgb/Documents/GitHub/DOL-Translations/lupin-iii/src/common/fs/COMMON/ --filter sfil.bin --output C:/Users/newgb/Documents/GitHub/DOL-Translations/lupin-iii/src/common/fs/COMMON/ --patch C:/Users/newgb/Documents/GitHub/DOL-Translations/lupin-iii/src/common/fs/COMMON/ --encoding "shift jis" --verbose

echo [INFO] Compiling patches for disc1

bass\\win\\bass.exe ..\\src\\disc1\\Main.asm

echo [INFO] Patches compiled for disc1

if not exist "%ISOFile2%" (
	echo [INFO] "%ISOFile2%" was not found
	echo Did you name the ROM correctly and place it in the correct folder?
	echo Exiting in 10 seconds..
	C:\Windows\System32\timeout.exe /t 10 /nobreak >nul
	exit /b 0
)

echo [INFO] Compiling patches for disc2

bass\\win\\bass.exe ..\\src\\disc2\\Main.asm

echo [INFO] Patches compiled for disc2

echo ---------- 
echo Finished!
echo ----------
pause