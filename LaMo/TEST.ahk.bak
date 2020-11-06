#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;Controlclick,X%FoundX% Y%FoundY%,LDPlayer
;제작 환경 LDPLAYER 800,450 DPI160
;DetectHiddenWindows, On
;SetControlDelay -1
CoordMode Pixel
return

3줄확인:
{
	Sleep, 500
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\잠재능력.bmp 
		if (errorlevel = 0)
			{	
				Controlclick,X473 Y438,LDPlayer ;버리기 클릭
				Sleep, 500
				Controlclick,X499 Y369,LDPlayer ;버리기 확인 클릭
				Sleep, 500
				goto, 감정하기
			}
		if (errorlevel = 1)
			{	
				Sleep, 500
				gosub, 세줄작홈이동
				Sleep, 500
				Controlclick,X774 Y59,LDPlayer ;메뉴
				Sleep, 500
				Controlclick,X353 Y444,LDPlayer ;경매장
				Sleep, 2000
				Controlclick,X400 Y116,LDPlayer ;판매창
				Sleep, 1000
				Controlclick,X500 Y204,LDPlayer ;아이템 클릭
				Sleep, 1000
				Controlclick,X500 Y369,LDPlayer
			}
}

잠재드래그:
{
	Sleep, 500
	ControlClick, x576 y390, LDPlayer,,,, D
	ControlClick, x576 y380, LDPlayer,,,, D
	ControlClick, x576 y370, LDPlayer,,,, D
	ControlClick, x576 y360, LDPlayer,,,, D
	ControlClick, x576 y350, LDPlayer,,,, D
	ControlClick, x576 y340, LDPlayer,,,, D
	ControlClick, x576 y330, LDPlayer,,,, D
	ControlClick, x576 y320, LDPlayer,,,, D
	ControlClick, x576 y310, LDPlayer,,,, D
	ControlClick, x576 y300, LDPlayer,,,, D
	ControlClick, x576 y390, LDPlayer,,,, U
	ControlClick, x576 y380, LDPlayer,,,, U
	ControlClick, x576 y370, LDPlayer,,,, U
	ControlClick, x576 y360, LDPlayer,,,, U
	ControlClick, x576 y350, LDPlayer,,,, U
	ControlClick, x576 y340, LDPlayer,,,, U
	ControlClick, x576 y330, LDPlayer,,,, U
	ControlClick, x576 y320, LDPlayer,,,, U
	ControlClick, x576 y310, LDPlayer,,,, U
	ControlClick, x576 y300, LDPlayer,,,, U
}
return

세줄작홈이동:
{
	Loop, 10
	{
		Controlclick,X779 Y60,LDPlayer
		Sleep, 100
	}
	Controlclick,X423 Y262,LDPlayer
	Sleep, 300
	Loop, 10
	{
		ControlSend,, {Esc}, LDPlayer
	}
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\게임종료.bmp 
		if (errorlevel = 0)
			{	
				Controlclick,X284 Y374,LDPlayer
				Sleep, 500
			}		
}

return

F1::
화면조정:
{
;플레이어 1 - 화면조정
WinActivate LDPlayer
WinWait, LDPlayer
WinMove, 0, 0
;플레이어 2
WinActivate LDPlayer-1
WinWait, LDPlayer-1
WinMove, 960, 0
return
}


F2::
세줄작시작:

{ ;구매후 홈
	Controlclick,X777 Y59,LDPlayer
	Sleep, 300
	Controlclick,X103 Y437,LDPlayer
	Sleep, 300
	Controlclick,X93 Y367,LDPlayer
	Sleep, 3000
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\장비상점.bmp 
		if (errorlevel = 0)
			{	
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer
				Sleep, 300
				Controlclick,X558 Y108,LDPlayer ;해적클릭
				Sleep, 1000
				Loop, 5 ;나중에 변수로 수정
				{
					Controlclick,X614 Y180,LDPlayer ;아이템클릭
					Sleep, 600
					Controlclick,X604 Y441,LDPlayer
					Sleep, 600
					Controlclick,X500 Y369,LDPlayer
					Sleep, 1500
				}
				gosub, 세줄작홈이동
				goto, 분해시작
			}		
		if (errorlevel = 1)
			{
				gosub, 세줄작홈이동
				goto, 세줄작시작
			}
}

분해시작:
	Controlclick,X732 Y58,LDPlayer
	Sleep, 1000
	Controlclick,X666 Y452,LDPlayer
	분해반복:
	Sleep, 1000
	Controlclick,X390 Y452,LDPlayer
	Sleep, 1000
	Controlclick,X485 Y443,LDPlayer
	Sleep, 1000
	Controlclick,X404 Y438,LDPlayer
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해종료.bmp 
		if (errorlevel = 0)
			{	
				Sleep, 500
				gosub, 세줄작홈이동
				Sleep, 500
				goto, 감정시작
			}
		if (errorlevel = 1)
			{	
				goto, 분해반복
			}
감정시작:
	Controlclick,X732 Y58,LDPlayer ;인벤
	Sleep, 500
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\장비부족.bmp 
		if (errorlevel = 0)
			{	
				Sleep, 500
				gosub, 세줄작홈이동
				Sleep, 500
				goto, 세줄작시작
			}
	감정하기: ;아이템이 있어 감정해야함
	Controlclick,X500 Y180,LDPlayer	;1번째칸 클릭
	Sleep, 500
	Controlclick,X642 Y437,LDPlayer	;감정버튼 클릭
	Sleep, 500
	Controlclick,X502 Y369,LDPlayer	;감정하기 버튼 클릭
	Sleep, 3000
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\감정후.bmp 
		if (errorlevel = 0)
			{	
				Sleep, 500
				gosub, 잠재드래그
				Sleep, 500
				gosub, 3줄확인
				Sleep, 500
				goto, 감정하기
			}
		if (errorlevel = 0)
			{	
				gosub, 세줄작홈이동
				Sleep, 500
				goto, 세줄작시작
				Sleep, 500
			}
return




F11:: Reload
F12:: ExitApp