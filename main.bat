@echo off

set "SERVER_DIR=%~dp0backend\"

:start_server
    %SERVER_DIR%git-portable\bin\git.exe config --global --add safe.directory %SERVER_DIR%
    %SERVER_DIR%git-portable\bin\git.exe pull origin master
    if exist "%SERVER_DIR%\server.lock" (
        :: sar = server already running.
        type sar > %SERVER_DIR%MSG.vbs
        type %SERVER_DIR%\server.lock >> %SERVER_DIR%MSG.vbs
        echo ^" >> %SERVER_DIR%MSG.vbs
        type %SERVER_DIR%MSG.vbs
        cscript /nologo %SERVER_DIR%MSG.vbs
        del %SERVER_DIR%MSG.vbs
        exit /b 1
    )
    FOR /F "tokens=4 delims= " %%i in ('route print ^| find " 0.0.0.0"') do set localIp=%%i
    echo | set /p Q="%localIp%" > %SERVER_DIR%\server.lock
    %SERVER_DIR%git-portable\bin\git.exe add .
    %SERVER_DIR%git-portable\bin\git.exe commit -m "Server Start"
    %SERVER_DIR%git-portable\bin\git.exe push origin master
    echo Server will start up.
    cd  %SERVER_DIR%server
    %SERVER_DIR%java-portable\jdk-20.0.1\bin\java.exe -Xmx1024M -Xms1024M -jar "server.jar"
    cd ..
    %SERVER_DIR%git-portable\bin\git.exe pull origin master
    if exist "%SERVER_DIR%\server.lock" (
        del "%SERVER_DIR%\server.lock"
        %SERVER_DIR%git-portable\bin\git.exe add .
        %SERVER_DIR%git-portable\bin\git.exe commit -m "Server Stop"
        %SERVER_DIR%git-portable\bin\git.exe push origin master
        :: sasd = server has shut down
        cscript /nologo %SERVER_DIR%shsd.vbs
        exit /b
    ) else (
        :: sasd = server has shut down
        cscript /nologo %SERVER_DIR%shsd.vbs
        exit /b
    )
exit /b

:: Main script logic
call :start_server
pause
