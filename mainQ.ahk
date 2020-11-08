#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;Controlclick,X%FoundX% Y%FoundY%,LDPlayer

return

홈으로복귀:
{
	Loop, 10
	{
	ControlSend ,,{Esc},LDPlayer
	}
	Sleep, 1000
	goto, 퀘스트시작
}
return

지연시간:
{
	Sleep, 30000
	goto, 홈으로복귀
}
	

F1::
{
WinActivate LDPlayer
WinWait, LDPlayer
WinMove, 0, 0
return
}

F2::
퀘스트시작:
{s
Controlclick,X65 Y185,LDPlayer ;퀘스트클릭
Sleep,1000
퀘스트루틴1:
{
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\퀘스트대화.bmp ;대화스킵,수락,완료 
		if (errorlevel = 0)
			{	
				Loop, 20
				{
					Sleep, 300
					Controlclick,X446 Y199,LDPlayer
				}
				Sleep, 500
				Controlclick,X692 Y299,LDPlayer
				Sleep, 200
				goto, 퀘스트루틴2
			}		
		if (errorlevel = 1)
			{
				goto, 퀘스트루틴2
			}
}
}
퀘스트루틴2:
{
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\퀘스트.bmp 
		if (errorlevel = 0)
			{	
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer
				Sleep, 200
				goto, 퀘스트루틴3
			}		
		if (errorlevel = 1)
			{
				goto, 퀘스트루틴3
			}
}
퀘스트루틴3:
{
		ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\바로이동.bmp 
		if (errorlevel = 0)
			{	
				Sleep, 30000
				goto, 퀘스트루틴3
			}		
		if (errorlevel = 1)
			{
				goto, 홈으로복귀
			}
}
return

F6:: Reload