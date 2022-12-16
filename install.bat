@echo off
cls
IF %PROCESSOR_ARCHITECTURE% == x86 (start "%windir%\system32\mshta.exe" "%~dp0VDI_Optimizer.hta")
IF %PROCESSOR_ARCHITECTURE% == AMD64 (start "%windir%\syswow64\mshta.exe" "%~dp0VDI_Optimizer.hta")
