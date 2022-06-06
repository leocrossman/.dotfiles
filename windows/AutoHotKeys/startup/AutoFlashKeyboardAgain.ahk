#noenv ; recommended for performance and compatibility with future autohotkey releases.
; #warn  ; enable warnings to assist with detecting common errors.
sendmode input ; recommended for new scripts due to its superior speed and reliability.
setworkingdir %a_scriptdir% ; ensures a consistent starting directory.


HandleClick() {
  Loop {
    Sleep, 1000
    if WinExist("ahk_exe Wally.exe") {
      CoordMode, Mouse, Client
      Click, 235, 250
    }
    return HandleClick()
  }
}

#IfWinActive, ahk_exe Wally.exe
  HandleClick()
