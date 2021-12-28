@echo off
title PASSWORD RET
:back
set /p name=Password of : 
if not defined %name% (
echo check again
goto :back) else (
setlocal enableDelayedExpansion
echo password for %name% is 
echo !%name%!|clip
exit /b
)
