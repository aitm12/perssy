#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, mouse, screen ; code to make mouse move to coords on screen

var_gecko := "C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\bot_logic\DefaultBot\Gecko_NL_6Max_FR_BSS"
var_war := "C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\bot_logic\DefaultBot\war"

; notepad++ war & notes
Run, "C:\Program Files (x86)\Notepad++\notepad++" "C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\bot_logic\DefaultBot\notes.txt"
WinWaitActive, C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\bot_logic\DefaultBot\notes.txt - Notepad++
sleep 100
lang_sel()
sleep, 100
; keypress control + o
send ^o

; wait for open dialogue to open before typing in file name and opening
WinWaitActive, ahk_class #32770
sleep, 200
sendinput, %var_gecko%
send, {ENTER}
send, {ENTER}
sleep, 200
lang_sel()

sleep, 100
; keypress control + o
send ^o

; wait for open dialogue to open before typing in file name and opening
WinWaitActive, ahk_class #32770
sleep, 200
sendinput, %var_war%
send, {ENTER}
send, {ENTER}
sleep, 100
lang_sel()

sleep, 300
Run, "C:\Program Files (x86)\Notepad++\notepad++" "C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\bot_logic\DefaultBot\war.OHF"
sleep, 300
lang_sel()
sleep, 100
WinMove, C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\bot_logic\DefaultBot\war.OHF - Notepad++,, 1200, 25
sleep, 500

; help files openppl & oh manuals
; & move manuals to positions
Run, C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\documents\HelpFiles\OpenHoldem_Manual.chm
winwaitactive, OpenHoldem Manual
sleep 200
WinMove, OpenHoldem Manual,, 3020, 640
sleep, 300

Run, C:\Users\tiltmonster\Documents\OpenHoldem_13.0.3\documents\HelpFiles\OpenPPL_Manual.chm
winwaitactive OpenPPL - The Manual 
sleep 200
WinMove, OpenPPL - The Manual,, 2150, 640


lang_sel(a:=0, b:=0){
	coordmode, mouse, relative
	mouseclick, left, 245, 40
	mouseclick, left, 300,600
	return
			
}