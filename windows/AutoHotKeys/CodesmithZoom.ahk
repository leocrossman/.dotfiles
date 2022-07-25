#SingleInstance, Force
#noenv ; recommended for performance and compatibility with future autohotkey releases.
sendmode input ; recommended for new scripts due to its superior speed and reliability.
setworkingdir %a_scriptdir% ; ensures a consistent starting directory.

; function to enter the zoom meeting passcode + auto-accept when a meeting is being recorded
HandleMeeting() {
	Loop {
		Sleep, 1000
		if WinExist("ahk_class zWaitHostWndClass") {
			Send, codesmith
			Send, {Enter}
			return HandleMeeting()
		} else if WinExist("ahk_class ZPRecordingConsentClass") {
			Loop, 3 {
				Send, {Tab}
			}
			Send, {Enter}
			return HandleMeeting()
		}
	}
}

HandleMeeting()
