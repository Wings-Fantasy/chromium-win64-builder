@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\

cd chromium\src
cmd /c "gn clean out\windows-amd64"
cd ..\..