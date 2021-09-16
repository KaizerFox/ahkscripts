#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

messages = 
(
	:16_unknown
	:16_poor
	:16_unsatisfactory
	:16_excellent
)

StringSplit, messlist, messages, `n,`r

while (true)
{
	sleep 750
        Random, Pickthis, 1, %messlist0%
	sleep 100
        thismess := messlist%PickThis%
	sleep 50
	SendInput {Raw}+
	sleep 50
        SendInput %thismess%
	sleep 50
	SendInput {Enter}
	sleep 500
}

Pause::Pause
