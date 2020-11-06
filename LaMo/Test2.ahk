#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

F10::
{
;플레이어 1 - 화면조정
WinActivate LDPlayer
WinWait, LDPlayer
WinMove, 0, 0
return
}

F11:: Reload 
F12:: ExitApp


F1:: ;장점진입
상점진입:
{
	Sleep, 200 ;시작
	Controlclick,X777 Y59,LDPlayer
	Sleep, 1000
	Controlclick,X91 Y435,LDPlayer
	Sleep, 1000
	Controlclick,X91 Y364,LDPlayer ;상점진입
	Sleep, 2000
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\장비상점.bmp 
		if (errorlevel = 0)
			{	
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;장비상점 진입확인으로 장비상점으로 이동
				Sleep, 1000
				Controlclick,X556 Y106,LDPlayer ;해적진입
				Sleep, 1000
				gosub, 구매루틴
				Sleep, 1000
				goto, 분해
				
			}		
		if (errorlevel = 1)
			{
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				Controlclick,X433 Y260,LDPlayer ;장비상점 진입불가로 홈에서 처음부터 다시시작
				goto, 상점진입
			}
			return
}
구매루틴:
	Loop, 10
	{
	Sleep,1000
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\해적모자.bmp
		if (errorlevel = 0)
			{	
				Sleep, 500
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;모자클릭
				Sleep, 1000
				ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\구매하기.bmp
						if (errorlevel = 0)
							{	
								Sleep, 500
								Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;구매하기클릭
								Sleep, 1000
								ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\구매하기2.bmp
									if (errorlevel = 0)
									{	
										Sleep, 500
										Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;구매하기클릭
										Sleep, 1000
									}
							}
			}
		if (errorlevel = 1)
			{
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X775 Y58,LDPlayer ; 홈에서 처음부터 다시시작
				Controlclick,X433 Y260,LDPlayer ; 홈에서 처음부터 다시시작
				goto, 상점진입
			}
	}
goto, 분해
return
분해:
{
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X437 Y262,LDPlayer ; 홈 이동
	Sleep, 1000
	Controlclick,X734 Y59,LDPlayer ; 인벤
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해.bmp
		if (errorlevel = 0)
			{	
				Sleep, 500
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해클릭
				Sleep, 500
				ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해2.bmp
						if (errorlevel = 0)
							{	
								Sleep, 500
								Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해클릭
								Sleep, 500
								ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해확인.bmp
									if (errorlevel = 0)
									{	
										Sleep, 500
										Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해확인클릭
										Sleep, 500
										ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해확인2.bmp
											if (errorlevel = 0)
											{
												Sleep, 500
												Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해확인클릭
												Sleep, 500
												ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\재분해.bmp
													if (errorlevel = 0)
													{
														Sleep, 500
														goto, 분해
													}
													if (errorlevel = 1)
													{
														Sleep, 500
														goto, 감정
													}
											}
									}
							}
			}
}
감정:
{
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X437 Y262,LDPlayer ; 홈 이동
	Sleep, 500
	Controlclick,X734 Y59,LDPlayer ; 인벤
}