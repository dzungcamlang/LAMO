#NoTrayIcon

Gui, Add, Tab3, x0 y-2 w316 h432 , 3줄작|자동메인퀘|자동사냥
Gui, Tab, 1
Gui, add, text, ,RaMo 3줄작
Gui, add, text,y6 ,RaMo 3줄작

Gui, Tab
Gui, Show, w319 h426, RaMoMacro 1.0
return

GuiClose:
ExitApp

F6::Reload