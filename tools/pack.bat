echo off
setlocal ENABLEEXTENSIONS

set KEY_NAME="HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\bohemia interactive\arma 3"
set VALUE_NAME=main

for /f "tokens=2*" %%a in ('reg query %KEY_NAME% /v %VALUE_NAME% 2^>^&1^|find "REG_"') do @set GAME_PATH=%%b

if defined GAME_PATH (
	MakePbo -@=itc_air -X=.bat .. "%GAME_PATH%\@itc_air\addons\itc_air.pbo"
) else (
	@echo Could not find game path!
)