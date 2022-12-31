#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; ^ = ctrl, # = win, ! = Alt, + = shit

#Enter::
Run, C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.15.3466.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe
Return

#`::
send, !{F4}
Return

; ^!l::
; Run, C:\Users\aksha\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Launch.lnk
; Return

^!u::
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\BCUninstaller\BCUninstaller.lnk
Return

^#i::
Run, C:\Users\aksha\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk
Return

^+`::
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Process Hacker 2\Process Hacker 2.lnk
Return

^!a::
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    try
    {
        if A_IsCompiled
            Run *RunAs "%A_ScriptFullPath%" /restart
        else
            Run *RunAs "%A_AhkPath%" /restart "%A_ScriptFullPath%"
    }
    ExitApp
}
Return

^!m::
WinMinimize, A
Return

^!l::
Run, C:\Program Files\PowerToys\PowerToys.exe
Run, C:\Program Files (x86)\Mica For Everyone\MicaForEveryone.exe
Run, C:\Program Files (x86)\Rapoo Audio 7.1\Rapoo Audio 7.1.exe
Return

^!q::
ExitApp
Return