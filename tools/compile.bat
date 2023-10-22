@echo off

set ISOFile=..\input\Lupin Disc 1 [J].iso

if not exist "%ISOFile%" (
	echo [INFO] "%ISOFile%" was not found
	echo Did you name the ROM correctly and place it in the correct folder?
	echo Exiting in 10 seconds..
	timeout /t 10 /nobreak >nul
	exit /b 0
)

BinString.exe patch --source C:/Users/newgb/Documents/GitHub/DOL-Translations/lupin-iii/src/disc1/fs/COMMON/ --filter sfil.bin --output C:/Users/newgb/Documents/GitHub/DOL-Translations/lupin-iii/src/disc1/fs/COMMON/ --patch C:/Users/newgb/Documents/GitHub/DOL-Translations/lupin-iii/src/disc1/fs/COMMON/ --encoding "shift jis" --verbose

echo [INFO] Compiling patches for disc1

bass\\win\\bass.exe ..\\src\\disc1\\Main.asm

echo [INFO] Patches compiled for disc1

echo [INFO] Compiling patches for disc2

bass\\win\\bass.exe ..\\src\\disc2\\Main.asm

echo [INFO] Patches compiled for disc2

echo ---------- 
echo Finished!
echo ----------
pause