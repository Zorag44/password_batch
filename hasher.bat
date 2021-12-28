@echo off 
title PASSWORD GEN
set /p name=Set password for : 
set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890!@#$%^&*(),./;[]\-<>?:"{}+_"
call :count chars sz
set sz=%sz%
:count
setlocal enabledelayedexpansion

:count_Loop
   if not "!%1:~%len%!"=="" set /A len+=1 & goto :count_Loop
(endlocal & set %2=%len%)

set "pass="
for /L %%j in (1,1,32) do (
call :make_pass 
)
echo your new password for %name% is %pass%
setx %name% "%pass%"
exit /b
:make_pass
setlocal enabledelayedexpansion
set /a i=%random% %%sz
set b=!chars:~%i%,1!
(endlocal & if "%pass%"=="" (set "pass=%b%") else (set "pass=%pass%%b%"))


