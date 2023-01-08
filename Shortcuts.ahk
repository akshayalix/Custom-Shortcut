#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%

; ^ = ctrl, # = win, ! = Alt, + = shit

#Enter::  ; Win + Enter = Terminal
Run, C:\Program Files\WindowsApps\Microsoft.WindowsTerminal_1.15.3466.0_x64__8wekyb3d8bbwe\WindowsTerminal.exe
Return

#`::  ; Win + ` = CloseWindow
send, !{F4}
Return

; ^!l::
; Run, C:\Users\aksha\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Launch.lnk
; Return

^!u::  ; Ctrl + Alt + u = Custom Program (BCUnistaller)
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\BCUninstaller\BCUninstaller.lnk
Return

^#i::  ; Ctrl + Win + i = Control Panel
Run, C:\Users\aksha\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Control Panel.lnk
Return

^+`::  ; Ctrl + Shift + ` = Process Hacker 2
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Process Hacker 2\Process Hacker 2.lnk
Return

^!a::  ; Ctrl + Alt + a = Run Script as Admin
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

^!Tab::  ; Ctrl + Alt + Tab = Minimize Current Window
WinMinimize, A
Return

#!r::  ; Alt + Win + r = Restart System
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Restart.lnk
Return

#!s::  ; Alt + Win + s = Shutdown System
Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Shutdown.lnk
Return

^!l::  ; Ctrl + Alt + l = Custom Programs
Run, C:\Program Files\PowerToys\PowerToys.exe
Run, C:\Program Files (x86)\Mica For Everyone\MicaForEveryone.exe
Run, C:\Program Files (x86)\Rapoo Audio 7.1\Rapoo Audio 7.1.exe
Return

#m::  ; Win + m = Volume Mute
Send {Volume_Mute}
Return

^+l::  ; Ctrl + Shift + l = Open Lively Wallpaper
Run, C:\Users\aksha\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Lively Wallpaper.lnk
Return

~$Esc::     ; Long Press Escape Key to close Active Window
KeyWait, Escape, T0.5
If ErrorLevel
    PostMessage, 0x112, 0xF060,,, A
Return

^!q::
ExitApp
Return