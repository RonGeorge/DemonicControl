@echo off
setlocal

REM Define file paths, URLs, and target directories
SET "file1=%~dp0DemonicControl.met"
SET "url1=https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/DemonicControl.met"
SET "file2=%~dp0DemonicControl.txt"
SET "url2=https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/installer/DemonicControl.txt"
SET "file3=%~dp0DemonicControl.Layout"
SET "url3=https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/installer/DemonicControl.Layout"
SET "target_dir1=C:\Games\VirindiPlugins\VirindiTank"
SET "target_dir2=C:\Games\Decal Plugins\chaoshelper"

REM Check if file1 exists, download if missing
if exist "%file1%" (
    echo "%file1%" already exists. Skipping download...
) else (
    call :download "%url1%" "%file1%"
    if errorlevel 1 (
        echo ERROR: Failed to download "%url1%" to "%file1%".
        goto :error
    )
)

REM Check if file2 exists, download if missing
if exist "%file2%" (
    echo "%file2%" already exists. Skipping download...
) else (
    call :download "%url2%" "%file2%"
    if errorlevel 1 (
        echo ERROR: Failed to download "%url2%" to "%file2%".
        goto :error
    )
)

REM Check if file3 exists, download if missing
if exist "%file3%" (
    echo "%file3%" already exists. Skipping download...
) else (
    call :download "%url3%" "%file3%"
    if errorlevel 1 (
        echo ERROR: Failed to download "%url3%" to "%file3%".
        goto :error
    )
)

REM Move file1, file2, and file3 to their respective directories
echo Moving "%file1%" to "%target_dir1%"...
move /Y "%file1%" "%target_dir1%"
if errorlevel 1 (
    echo ERROR: Failed to move "%file1%" to "%target_dir1%".
    goto :error
)

echo Moving "%file2%" to "%target_dir2%"...
move /Y "%file2%" "%target_dir2%"
if errorlevel 1 (
    echo ERROR: Failed to move "%file2%" to "%target_dir2%".
    goto :error
)

echo Moving "%file3%" to "%target_dir2%"...
move /Y "%file3%" "%target_dir2%"
if errorlevel 1 (
    echo ERROR: Failed to move "%file3%" to "%target_dir2%".
    goto :error
)

echo Installation successful.
pause
goto :eof

REM Download function
:download
echo Downloading from "%~1" to "%~2"...
curl -L -o "%~2" "%~1"
if errorlevel 1 (
    echo ERROR: Failed to download "%~1" to "%~2".
    goto :eof
)
goto :eof

:error
echo Installation failed. Please check the error messages above.
pause
exit /b
