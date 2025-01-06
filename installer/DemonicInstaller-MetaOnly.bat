@echo off
setlocal

REM Define file paths, URLs, and target directory
SET "current_dir=%~dp0"
SET "met_file=%~dp0DemonicControl.met"
SET "met_url=https://raw.githubusercontent.com/RonGeorge/DemonicControl/main/DemonicControl.met"
SET "target_dir=C:\Games\VirindiPlugins\VirindiTank"

REM Create target directory if it doesn't exist
if not exist "%target_dir%" (
    echo Creating target directory...
    mkdir "%target_dir%"
    if errorlevel 1 (
        echo ERROR: Failed to create target directory.
        goto :error
    )
)

REM Download the .met file directly (overwrite if it exists)
echo Downloading "%met_url%" to "%met_file%"...
curl -L -o "%met_file%" "%met_url%"
if errorlevel 1 (
    echo ERROR: Failed to download "%met_url%".
    goto :error
)

REM Check if downloaded file exists
if not exist "%met_file%" (
    echo ERROR: File DemonicControl.met not found after download.
    goto :error
)
pause


REM Move the file to target directory
echo Moving "%met_file%" to "%target_dir%"...
move /Y "%met_file%" "%target_dir%"
if errorlevel 1 (
    echo ERROR: Failed to move DemonicControl.met.
    goto :error
)

color 2f
echo Installation successful.
pause
goto :eof

:error
color 4f
echo Installation failed. Please check the error messages above.
pause
exit /b