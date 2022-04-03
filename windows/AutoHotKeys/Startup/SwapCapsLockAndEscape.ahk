#noenv ; recommended for performance and compatibility with future autohotkey releases.
; #warn  ; enable warnings to assist with detecting common errors.
sendmode input ; recommended for new scripts due to its superior speed and reliability.
setworkingdir %a_scriptdir% ; ensures a consistent starting directory.

; Define the group: ProgramsToSwapCapsLockAndEscape
GroupAdd, ProgramsToSwapCapsLockAndEscape, ahk_exe Code.exe ; VS Code
GroupAdd, ProgramsToSwapCapsLockAndEscape, ahk_exe ubuntu2004.exe ; WSL Ubuntu
; uncomment the line below for chrome support
GroupAdd, ProgramsToSwapCapsLockAndEscape, ahk_exe chrome.exe ; google chrome
GroupAdd, ProgramsToSwapCapsLockAndEscape, ahk_exe firefox.exe ; firefox developer edition
GroupAdd, ProgramsToSwapCapsLockAndEscape, ahk_exe WindowsTerminal.exe ; WindowsTerminal

; Swap caps lock and escape for any window in the group ProgramsToSwapCapsLockAndEscape
#IfWinActive, ahk_group ProgramsToSwapCapsLockAndEscape
	*CapsLock:: Escape
	Escape:: CapsLock
