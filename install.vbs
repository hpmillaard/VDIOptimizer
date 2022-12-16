Dim WSH : Set WSH = WScript.CreateObject("WScript.Shell")
Dim FSO : Set FSO = CreateObject("Scripting.FileSystemObject")
Dim ENV : Set ENV = WSH.Environment("PROCESS")
ENV("SEE_MASK_NOZONECHECKS") = 1

CurrentPath = FSO.GetParentFolderName(WScript.ScriptFullName)
strVer = GetObject("winmgmts:\\.\root\cimv2:Win32_Processor='cpu0'").AddressWidth
strWinDir = WSH.ExpandEnvironmentStrings("%WINDIR%")

If strVer = "64" Then
	WSH.Run """" & strWinDir & "\SysWow64\mshta.exe"" """ & CurrentPath & "\VDI_Optimizer.hta""",1,true
Else
	WSH.Run "mshta.exe """ & CurrentPath & "\VDI_Optimizer.hta""",1,true
End If

wscript.quit(0)
