$CurPath = Split-Path -parent $PSCommandPath
$Arch = (Get-Process -Id $PID).StartInfo.EnvironmentVariables["PROCESSOR_ARCHITECTURE"];
if ($Arch -eq 'x86') {Start-Process "$ENV:windir\system32\mshta.exe" -ArgumentList "$CurPath\VDI_Optimizer.hta"}
if ($Arch -eq 'amd64') {Start-Process "$ENV:windir\syswow64\mshta.exe" -ArgumentList "$CurPath\VDI_Optimizer.hta"}
