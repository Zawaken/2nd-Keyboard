#NoEnv
SendMode Input
#InstallKeybdHook
#UseHook On
Menu, Tray, Icon, shell32.dll, 283
#SingleInstance force 
#MaxHotkeysPerInterval 2000
#WinActivateForce 


~F24::
FileRead, key, D:\Home\Documents\GitHub\2nd-Keyboard\key.txt
If (key = "o")
	Run "%UserProfile%\AppData\Local\osu!\osu!.exe"
else if(key = "p")
	return
else if(key = "i")
	return

else if (key = "leftbracket")
	return 
else if(key = "rightbracket")
	return

else if (key = "y")
return 
else if(key = "u")
	return

else if(key = "m")
	return
else if(key = "j")
	return
else if(key = "n")
	SendInput, England is my city. {Enter}
else if(key = "comma")
	return
else if(key = "h")
	return
else if(key = "k")
	return

else if(key = "period")
	return
else if(key = "slash")
	return
else if(key = "singlequote")
	return

else if(key = "semicolon")
	return
else if(key = "l")
	return
else if(key = "2")
	return
else if(key = "3")
	return
else if(key = "4")
	return
else if(key = "5")
	return
else if(key = "6")
	return
else if(key = "7")
	return
else if(key = "8")
	return
else if(key = "9")
	return
else if(key = "0")
	return

else if(key = "F1")
	TaskbarMove("Top")
else if(key = "F2")
	TaskbarMove("Bottom")
else if(key = "F3")
	return
else if(key = "F4")
	return
else if(key = "F5")
	return
else if(key = "F6")
	return
else if(key = "F7")
	return
else if(key = "F8")
	return
else if(key = "F9")
	return
else if(key = "F10")
	return
else if(key = "F11")
	return
else if(key = "F12")
	return


else if (key = "insert") 
	return
else if(key = "home") 
	return
else if(key = "pageup")
	return
else if(key = "delete")
	return
else if(key = "end")
	return
else if(key = "pagedown")
	return
else if(key = "q")
	return
else if(key = "w")
	return
else if(key = "e")
	return
else if(key = "a")
	return
else if(key = "s")
	Run "C:\Program Files (x86)\Steam\Steam.exe"
else if(key = "d")
	return
else if(key = "z")
	return
else if(key = "x")
	SendInput, lmao xd lol rofl ialmaorn roflmao XD lawl Cx {Enter}
else if(key = "c")
	return

else if(key = "minus")
	return
else if(key = "equals")
	return


else if(key = "r")
	return
else if(key = "f")
	{
	IfWinNotExist, ahk_class MozillaWindowClass
	run, firefox.exe
	if WinActive("ahk_class MozillaWindowClass")
		send, ^{tab}
	else
		WinActivate ahk_class MozillaWindowClass
	}
else if(key = "v")
	return

else if(key = "t")
	Run cmder.exe
else if(key = "g")
	Run "%A_Desktop%\Github Desktop.lnk"
else if(key = "b")
	return

else if(key = "up") 
	return
else if(key = "left")
	return
else if(key = "down")
	return
else if(key = "right")
	return

else if(key = "enter")
	return

TaskbarMove(p_pos) {
	label:="TaskbarMove_" p_pos

	WinExist("ahk_class Shell_TrayWnd")
	SysGet, s, Monitor

	if (IsLabel(label)) {
		Goto, %label%
	}
	return

	TaskbarMove_Top:
	TaskbarMove_Bottom:
	WinMove(sLeft, s%p_pos%, sRight, 0)
	return
}

WinMove(p_x, p_y, p_w="", p_h="", p_hwnd="") {
	WM_ENTERSIZEMOVE:=0x0231
	WM_EXITSIZEMOVE :=0x0232
	
	if (p_hwnd!="") {
		WinExist("ahk_id " p_hwnd)
	}
	
	SendMessage, WM_ENTERSIZEMOVE
	;//Tooltip WinMove(%p_x%`, %p_y%`, %p_w%`, %p_h%)
	WinMove, , , p_x, p_y, p_w, p_h
	SendMessage, WM_EXITSIZEMOVE
}
Return