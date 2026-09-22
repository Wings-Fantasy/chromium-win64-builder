@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\

cd chromium
git clone --depth 1 --no-checkout -b %VERSION% https://chromium.googlesource.com/chromium/src.git
xcopy /f /s /e /i %CHROMIUM_DIR%\internal src\google_apis\internal
xcopy /f /s /e /i %CHROMIUM_DIR%\out src\out\windows-amd64
cd ..