@echo off

set REPO_URL=https://github.com/Wazeback/MCSMS.git
set "SERVER_DIR=%~dp0"

:start_server
    git-portable\bin\git.exe config --global --add safe.directory %SERVER_DIR%
    git-portable\bin\git.exe pull origin master
    if exist "%SERVER_DIR%\server.lock" (
        echo Another instance is already running. Exiting.
        pause
        exit /b 1
    )
    echo. > "%SERVER_DIR%\server.lock"
    git-portable\bin\git.exe add .
    git-portable\bin\git.exe commit -m "Server Start"
    git push origin master
    start run.bat
    echo Server has started up.
    pause
exit /b


:stop_server
    git-portable\bin\git.exe pull origin master
    if exist "%SERVER_DIR%\server.lock" (
        echo stop > "%SERVER_DIR%\stop.txt"
        ping 127.0.0.1 -n 6 > nul
        del "%SERVER_DIR%\server.lock"
        git-portable\bin\git.exe add .
        git-portable\bin\git.exe commit -m "Server Stop"
        git-portable\bin\git.exe push origin master
        echo Server has shut down.
        pause
        exit /b
    ) else (
        echo Server is has already shut down. Exiting.
        pause
        exit /b
    )
exit /b

REM Main script logic
call :start_server

REM Wait for the "stop" command in the text box
:wait_for_stop
set /p command=
if /I "%command%"=="stop" (
    call :stop_server
    exit /b
)
goto wait_for_stop

pause
