@echo off
echo Starting installation...

REM Define source and target directories
SET target_dir1=C:\Games\VirindiPlugins\VirindiTank
SET target_dir2=C:\Games\Decal Plugins\chaoshelper
SET file1=%~dp0DemonicControl.met
SET file2=%~dp0DemonicControl.txt
SET file3=%~dp0DemonicControl.Layout

REM Define download URLs
SET url1=https://example.com/DemonicControl.met
SET url2=https://example.com/DemonicControl.txt
SET url3=https://example.com/DemonicControl.Layout

REM Function to download a file
:download
echo Downloading %2...
curl -o %1 %2
if errorlevel 1 (
    echo ERROR: Failed to download %1 from %2.
    goto :error
)
goto :eof

REM Check if source files exist, download if missing
if not exist "%file1%" (
    echo "%file1%" not found. Attempting to download...
    call :download "%file1%" "%url1%"
)
if not exist "%file2%" (
    echo "%file2%" not found. Attempting to download...
    call :download "%file2%" "%url2%"
)
if not exist "%file3%" (
    echo "%file3%" not found. Attempting to download...
    call :download "%file3%"
)

REM Check if target directories exist
if not exist "%target_dir1%" (
    echo ERROR: Target directory %target_dir1% does not exist.
    goto :error
)
if not exist "%target_dir2%" (
    echo ERROR: Target directory %target_dir2% does not exist.
    goto :error
)

REM Copy files to the target directories
echo Copying files...
copy "%file1%" "%target_dir1%"
if errorlevel 1 (
    echo ERROR: Failed to copy %file1% to %target_dir1%.
    goto :error
)
copy "%file2%" "%target_dir1%"
if errorlevel 1 (
    echo ERROR: Failed to copy %file2% to %target_dir1%.
    goto :error
)
copy "%file3%" "%target_dir2%"
if errorlevel 1 (
    echo ERROR: Failed to copy %file3% to %target_dir2%.
    goto :error
)

echo Installation completed successfully!
pause
exit /b 0

:error
echo Installation failed. Please check the error messages above.
pause
exit /b
