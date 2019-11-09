@if NOT "%unitypath2019_2%"==""  goto :_ok

@echo : PLEASE SET unitypath2019_2 ENVIRONMENT VALIABLE.
@pause
goto :eof

:_ok
cd /d %~dp0

if exist unityProject goto :_open

:_create
start "" "%unitypath2019_2%" -createproject %~dp0unityProject -noUpm
goto :eof

:_open
start "" "%unitypath2019_2%" -projectPath %~dp0unityProject -noUpm
