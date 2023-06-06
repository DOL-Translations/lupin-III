@echo off
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