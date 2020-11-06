F4::
{
WinActivate LDPlayer
WinWait, LDPlayer
WinMove, 0, 0
return
}

F5::
구매:
{
 CoordMode, Mouse, Client
 MouseClick, Left, 1239, 73
 Sleep, 600
 MouseClick, Left, 137, 680
 Sleep, 600
 다시구매:
 Sleep, 600
 MouseClick, Left, 153, 574
 Sleep, 2000
 MouseClick, Left, 83, 261
 sleep, 1000
	구매반복:
	{
	MouseClick, Left, 458, 482
	Sleep, 300
	MouseClick, Left, 958, 671
	Sleep, 300
	MouseClick, Left, 788, 567
	Sleep, 500
	imagesearch, VX, VY, 0, 0, 1920, 1080, *50 가방부족.bmp
			if (errorlevel = 0)
			{	
				Sleep,500
				goto, 분해
			}		
			if (errorlevel = 1)
			{
				goto, 구매반복
			}
	}
	
return
}

;상점창에서 지작
F9::
분해:
{
	Sleep, 600
	CoordMode, Mouse, Client
	MouseClick, Left, 1248, 80
	Sleep, 600
	MouseClick, Left, 707, 109
	Sleep, 1000
	MouseClick, Left, 1072, 696
	Sleep, 200
	분해반복:
	Sleep, 700
	MouseClick, Left, 634, 694
	Sleep, 700
	MouseClick, Left, 794, 682
	Sleep, 700
	MouseClick, Left, 641, 685
	Sleep, 700
		imagesearch, VX, VY, 0, 0, 1920, 1080, *50 분해종료.bmp
			if (errorlevel = 0)
			{	
				Sleep, 200
				goto, 감정
				Sleep, 200
			}		
			if (errorlevel = 1)
			{
				Sleep, 200
				goto, 분해반복
				Sleep, 200
			}
	
}
;장비분해완료까지 확인 아직 분해창

F10::
감정:
{	
	CoordMode, Mouse, Client
	MouseClick, Left, 1239, 78
	Sleep, 500
	감정반복:
	Sleep, 1500
	imagesearch, VX, VY, 0, 0, 1920, 1080, *50 notf.bmp
		if (errorlevel = 0)
		{
			MouseClick, Left, 1241, 78
			Sleep, 1000
			MouseClick, Left, 787, 265
			sleep, 500
			goto, 구매 ;클릭으로 홈에서 아예 다시 구매 시작
		}
		if (errorlevel = 1)
		{
		MouseClick, Left, 790, 257
		Sleep, 500
		MouseClick, Left, 1026, 683
		Sleep, 500
		MouseClick, Left, 772, 571
		Sleep, 1000
		MouseClick, Left, 926, 357
		Sleep, 500
		MouseClick, WheelDown
		Sleep,1000
		imagesearch, VX, VY, 0, 0, 1920, 1080, *50 3줄작.bmp
			if (errorlevel = 0)
			{	
				MouseClick, Left, 752, 685
				Sleep, 500
				MouseClick, Left, 797, 562
				Sleep, 2500
				goto, 감정반복
			}
			if (errorlevel = 1)
			{
				MouseClick, Left, 1226, 92
				Sleep, 600
				MouseClick, Left, 1245, 80
				Sleep, 600
				MouseClick, Left, 572, 679
				Sleep, 1000
				MouseClick, Left, 650, 159
				Sleep, 600
				MouseClick, Left, 786, 310
				Sleep, 600
				MouseClick, Left, 512, 499
				Sleep, 100
				MouseClick, Left, 512, 583
				Sleep, 100
				MouseClick, Left, 512, 583
				Sleep, 100
				MouseClick, Left, 512, 583
				Sleep, 100
				MouseClick, Left, 512, 583
				Sleep, 100
				MouseClick, Left, 512, 583
				Sleep, 100
				MouseClick, Left, 512, 583
				Sleep, 500
				MouseClick, Left, 517, 682
				Sleep, 500
				MouseClick, Left, 791, 563
				Sleep, 500
				MouseClick, Left, 638, 564
				Sleep, 500
				MouseClick, Left, 1244, 78
				Sleep, 500
				MouseClick, Left, 1166, 75
				Sleep, 1000
				goto, 감정반복
			}
	}
}
return

F6::Reload
F7::ExitApp