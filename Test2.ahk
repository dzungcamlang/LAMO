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
				Sleep, 1000
				goto, 상점진입
			}
			return
}
구매루틴:
	Loop, 200 ;유저가 변수설정 가능하게 [구매도중 서치실패로 다시 구매루틴으로 들어올때 루프 횟수 유지 에러1에 gosub사용확인]
	{
	Sleep,500
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\해적모자.bmp
		if (errorlevel = 0)
			{	
				Sleep, 100
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;모자클릭
				Sleep, 1000
				ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\구매하기.bmp
						if (errorlevel = 0)
							{	
								Sleep, 100
								Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;구매하기클릭
								Sleep, 1000
								ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\구매하기2.bmp
									if (errorlevel = 0)
									{	
										Sleep, 100
										Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;구매하기클릭
										Sleep, 1500
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
				Sleep, 1000
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
	Sleep, 2000
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해.bmp
		if (errorlevel = 0)
			{	
				Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해클릭
				Sleep, 2000
				ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해2.bmp
						if (errorlevel = 0)
							{	
								Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해클릭
								Sleep, 2000
								ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해확인.bmp
									if (errorlevel = 0)
									{	
										Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해확인클릭
										Sleep, 2000
										ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\분해확인2.bmp
											if (errorlevel = 0)
											{
												Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;분해확인클릭
												Sleep, 2500
												ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\재분해.bmp
													if (errorlevel = 0)
													{
														Sleep, 500
														goto, 감정
													}
													if (errorlevel = 1)
													{
														Sleep, 500
														goto, 분해
													}
											}
									}
							}
			}
}
감정:

	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X779 Y55,LDPlayer ; 홈 이동
	Controlclick,X437 Y262,LDPlayer ; 홈 이동
	Sleep, 1000
	Controlclick,X734 Y59,LDPlayer ; 인벤
	Sleep, 2000
	재감정:
	CoordMode Pixel
	ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\장비유무.bmp 
		if (errorlevel = 0)
			{	
				Controlclick,X779 Y55,LDPlayer ; 홈 이동
				Controlclick,X779 Y55,LDPlayer ; 홈 이동
				Controlclick,X779 Y55,LDPlayer ; 홈 이동
				Controlclick,X779 Y55,LDPlayer ; 홈 이동
				Controlclick,X779 Y55,LDPlayer ; 홈 이동
				Controlclick,X779 Y55,LDPlayer ; 홈 이동
				Controlclick,X437 Y262,LDPlayer ; 홈 이동
				Sleep, 1000
				goto, 상점진입
			}		
		if (errorlevel = 1)
			{	
				Controlclick,X492 Y176,LDPlayer ;장비클릭
				Sleep, 1500
				CoordMode Pixel
				ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\감정.bmp 
					if (errorlevel = 0)
						{	
							Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;감정클릭
							Sleep, 1500
							CoordMode Pixel
							ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\감정하기.bmp 
								if (errorlevel = 0)
									{	
										Controlclick,X%FoundX% Y%FoundY%,LDPlayer ;감정하기클릭
										Sleep, 2500
										ControlClick, x576 y400, LDPlayer,,,, D ;잠재드래그
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
										ControlClick, x576 y400, LDPlayer,,,, U
										ControlClick, x576 y390, LDPlayer,,,, U
										ControlClick, x576 y380, LDPlayer,,,, U
										ControlClick, x576 y370, LDPlayer,,,, U
										ControlClick, x576 y360, LDPlayer,,,, U
										ControlClick, x576 y350, LDPlayer,,,, U
										ControlClick, x576 y340, LDPlayer,,,, U
										ControlClick, x576 y330, LDPlayer,,,, U
										ControlClick, x576 y320, LDPlayer,,,, U
										ControlClick, x576 y310, LDPlayer,,,, U
										ControlClick, x576 y300, LDPlayer,,,, U ;잠재드래그
										Sleep, 2500
										CoordMode Pixel
										ImageSearch, FoundX, FoundY, 0, 0, A_ScreenWidth, A_ScreenHeight, image\3줄확인.bmp 
											if (errorlevel = 0)
												{	
													Controlclick,X475 Y435,LDPlayer ; 버리기 클릭
													Sleep, 1500
													Controlclick,X488 Y371,LDPlayer ; 확인 클릭
													Sleep, 1000
													goto, 재감정
												}
											if (errorlevel = 0)
												{	
													
													Controlclick,X767 Y70,LDPlayer ; 홈 이동
													Sleep, 1000
													Controlclick,X779 Y55,LDPlayer ; 홈 이동
													Sleep, 100
													Controlclick,X779 Y55,LDPlayer ; 홈 이동
													Sleep, 100
													Controlclick,X779 Y55,LDPlayer ; 홈 이동
													Sleep, 100
													Controlclick,X779 Y55,LDPlayer ; 홈 이동
													Sleep, 100
													Controlclick,X779 Y55,LDPlayer ; 홈 이동
													Sleep, 100
													Controlclick,X437 Y262,LDPlayer ; 홈 이동
													Sleep, 1000
													Controlclick,X779 Y55,LDPlayer ; 메뉴
													Sleep, 1500
													Controlclick,X354 Y437,LDPlayer ; 경매장
													Sleep, 2000
													Controlclick,X400 Y110,LDPlayer ; 판매클릭
													Sleep, 1000
													Controlclick,X490 Y209,LDPlayer ; 3줄 장비 클릭
													Sleep, 1000
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X208 Y324,LDPlayer ; 가격지정(3)
													Sleep, 100
													Controlclick,X328 Y440,LDPlayer ; 판매등록
													Sleep, 1000
													Controlclick,X496 Y368,LDPlayer ; 확인
													Sleep, 1000
													Controlclick,X406 Y365,LDPlayer ; 확인
													Sleep, 1000
													goto, 감정
												}	
									}
						}		
			}
return