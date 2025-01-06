@echo off
setlocal

REM Define file paths, URLs, and target directories
SET "current_dir=%~dp0"
SET "zip_file=%~dp0DemonicControl.zip"
SET "zip_url=https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/DemonicControl.zip"
SET "file1=%~dp0DemonicControl.met"
SET "file2=%~dp0DemonicControl.txt"
SET "file3=%~dp0DemonicControl.Layout"
SET "target_dir1=C:\Games\VirindiPlugins\VirindiTank"
SET "target_dir2=C:\Games\Decal Plugins\chaoshelper"

REM Download the zip file (overwrite if it exists)
echo Downloading "%zip_url%" to "%zip_file%"...
curl -L -o "%zip_file%" "%zip_url%"
if errorlevel 1 (
    echo ERROR: Failed to download "%zip_url%".
    goto :error
)

REM Extract the zip file using PowerShell
echo Extracting "%zip_file%" to "%current_dir%"...
powershell -Command "Expand-Archive -Path '%zip_file%' -DestinationPath '%current_dir%' -Force"
if errorlevel 1 (
    echo ERROR: Failed to extract "%zip_file%" using PowerShell.
    goto :error
)

REM Check if extracted files exist
if not exist "%file1%" (
    echo ERROR: File DemonicControl.met not found after extraction.
    goto :error
)
if not exist "%file2%" (
    echo ERROR: File DemonicControl.txt not found after extraction.
    goto :error
)
if not exist "%file3%" (
    echo ERROR: File DemonicControl.Layout not found after extraction.
    goto :error
)

REM Move file1, file2, and file3 to their respective directories
echo Moving "%file1%" to "%target_dir1%"...
move /Y "%file1%" "%target_dir1%"
if errorlevel 1 (
    echo ERROR: Failed to move DemonicControl.met.
    goto :error
)

echo Moving "%file2%" to "%target_dir2%"...
move /Y "%file2%" "%target_dir2%"
if errorlevel 1 (
    echo ERROR: Failed to move DemonicControl.txt.
    goto :error
)

echo Moving "%file3%" to "%target_dir2%"...
move /Y "%file3%" "%target_dir2%"
if errorlevel 1 (
    echo ERROR: Failed to move DemonicControl.Layout.
    goto :error
)

REM Cleanup
echo Cleaning up...
del /Q "%zip_file%"

color 2f
echo Installation successful.
pause
goto :eof

:error
color 4f
echo Installation failed. Please check the error messages above.
pause
exit /b