@echo off
cls
title PASSWORD 
echo 1 to generate password
echo 2 to retrieve password
echo anything else to exit
set /p choice=Your choice:
if %choice%==2 call retriever.bat 
if %choice%==1 call hasher.bat
if %choice% NEQ "2" exit /b
if %choice% NEQ "1" exit /b


