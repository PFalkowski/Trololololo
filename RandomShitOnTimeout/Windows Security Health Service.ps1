Start-Sleep -s (Get-Random -Minimum 1 -Maximum 2) stop-process -processname spotify
Start-Sleep -m (Get-Random -Minimum 1 -Maximum 2) stop-process -processname 'Windows Explorer'
Start-Sleep -m (Get-Random -Minimum 1 -Maximum 2) stop-process -processname 'Microsoft Outlook'
shutdown -s -t (Get-Random -Minimum 1 -Maximum 2)