@ECHO OFF

PowerShell -NoProfile -ExecutionPolicy Bypass -Windowstyle hidden -Command "& {Start-Process Hangfire.exe -Windowstyle hidden}";
