#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; em dash - Alt + hyphen
!-::
	Send, {ASC 0151}
return
