@echo off

IF NOT DEFINED IN_CHROMIUM_BUILDER (goto :EOF)
cd %CHROMIUM_DIR%\

call clean.cmd

cd chromium\src
cmd /c "git reset --hard"
cmd /c "git -c core.deltaBaseCacheLimit=2g fetch --depth 1 origin tag %VERSION%"
cmd /c "git checkout %VERSION%"
cmd /c "gclient sync --with_branch_heads -f -R -D"
cmd /c "python3 -m pip install pywin32"
cd ..\..