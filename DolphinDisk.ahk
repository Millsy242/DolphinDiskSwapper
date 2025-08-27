if A_Args.Length < 1 {
    MsgBox("No file path provided!")
    ExitApp
}

filePath := A_Args[1]

dolphinWindow := "ahk_exe Dolphin.exe"

; Activate the window (bring to front)
WinActivate(dolphinWindow)

Send("{space down}")
Sleep(50)
Send("{space up}")

Sleep 200

window := "Select a File"

; Activate the window (bring to front)
WinActivate(window)

; Set the file path in the filename field
ControlSetText(filePath, "Edit1", window)

; Small delay to ensure it's set
Sleep 200

; Send Enter to the dialog
ControlSend("{Enter}", "Edit1", window)
