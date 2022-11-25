@echo off
setlocal enabledelayedexpansion
mode con cols=70 lines=42
set F=1
:01
for /f "delims=" %%I in (C:\Users\Zhas\Desktop\projects\bat_projects\dance.txt) do (
    set /a F=F+1
    echo.%%I
    if !F! gtr 40 (
        set F=1
        :: >nul timeout /t 1
        >nul pathping -h 1 -p 100 -q 1 -w 1 127.0.0.1
        cls
    )
)
goto 01
