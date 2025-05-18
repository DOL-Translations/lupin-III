@echo off
setlocal

if "%~4"=="" (
    echo Usage: extract_file.bat outputfile inputfile start_hex size
    goto :eof
)

set "outfile=%~1"
set "infile=%~2"
set "start_hex=%~3"
set "size=%~4"

REM Convert hex to decimal
for /f %%A in ('powershell -nologo -noprofile -command "([convert]::ToInt32('%start_hex%', 16))"') do set "start_dec=%%A"

REM Run PowerShell to extract bytes
powershell -nologo -noprofile -command ^
    "$infile = '%infile%';" ^
    "$outfile = '%outfile%';" ^
    "$start = %start_dec%;" ^
    "$size = %size%;" ^
    "$data = [System.IO.File]::ReadAllBytes($infile);" ^
    "$slice = $data[$start..($start + $size - 1)];" ^
    "[System.IO.File]::WriteAllBytes($outfile, $slice)"

echo [INFO] Extraction complete.
