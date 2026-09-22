@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\

cd chromium\src
cmd /c "gn gen out\windows-amd64"
cmd /c "autoninja -C out/windows-amd64 mini_installer_archive chromedriver"
cd ..\..