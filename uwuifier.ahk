#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

messages = 
(
	uwu
	owo
	*meow*
	*nya*
	:P
	xd
	>.<
	>///<
	-\_-
	@\_@
	q\_q
	>w<
	:3
	;3
	e.e
	qwp
	pwq
	^w^
	^-^
	O.O
	z.z
	>.<
	v.v
	:d
	=.=
	-.-
	O\_O
	O\_o
	o\_O
	u-u
	O-O
	-w-
	xp
	x3
	TwT
	;-;
	\~
	<3
)

StringSplit, messlist, messages, `n,`r

i := 0

Loop
{
	Input, LastKey, L1 V 
}

l::w
+l::W
r::w
+r::W
Pause::Suspend

~Space::
{
	nya := true
	i := i + 1
	if (i = 5)
	{
		Random, Pickthis, 1, %messlist0%
		thismess := messlist%PickThis%
		if (thismess = "\~")
		{
			Send {Backspace}
		}
		SendInput {Raw}%thismess%
		Send {{Text} }
		i := 0
	}
}

~n::
{
	if (nya) && if (LastKey = " ")
	{
		Send {Text}y
		nya := !nya
	}
}

+~n::
{
	if (nya) && if (LastKey = " ")
	{
		Send {Text}Y
		nya := !nya
	}
}
