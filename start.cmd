@ECHO OFF
REM Script to start the minecraft server.
REM Requires Java (JRE8) to be installed and on your PATH.

CLS
ECHO. & ECHO [100;4mMinecraft Server Start Script[0m

REM Verify Java (JRE8) is installed & can be found

ECHO. & ECHO [92m Verifying Java Installation... [0m

ECHO. & ECHO  [45m Java Installation: [0m & ECHO.

WHERE java
IF %ERRORLEVEL% NEQ 0 ECHO. & ECHO [91m Java installation could not be found... exiting! [0m & GOTO :EOF

ECHO. & ECHO  [44m Starting Server: [0m & ECHO.

REM :: CALL java -version
CALL java -Xmx1024M -Xms1024M -jar server.jar nogui

ECHO. & ECHO  [42m Done! [0m

GOTO :EOF
