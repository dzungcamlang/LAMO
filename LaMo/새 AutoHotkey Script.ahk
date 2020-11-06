#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F10::
{
;플레이어 1 - 화면조정
WinActivate 겟앰프드
WinWait, 겟앰프드
WinMove, 0, 0
return
}

F11:: Reload 
F12:: ExitApp


F1:: ;장점진입
{
	Controlclick,X73 Y81,겟앰프드
}
return
F2::
{
	Send {F9}
}