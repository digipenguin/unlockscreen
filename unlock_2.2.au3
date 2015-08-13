#include <GUIConstantsEx.au3>
#include <FontConstants.au3>

Example()

Func Example()

    ;Local Const $sFont = "Comic Sans Ms"
	Local const $sFont = "Calibri"
    ; Create a GUI with various controls.
    Local $hGUI = GUICreate("Example", 400, 170)
    local $label1 = GUICtrlCreateLabel("Do you want to unlock screen?" , 10, 10, 380, 30)
	GUICtrlSetFont(-1, 12, $FW_NORMAL, 1, $sFont) ; Set the font of the previous control.


    ; Create a button control.
    Local $idNotepad = GUICtrlCreateButton("Initiate Unlock", 110, 130, 95, 25)
	GUICtrlSetFont($idNotepad, 10, $FW_NORMAL, 1, $sFont)
    Local $idClose = GUICtrlCreateButton("Close", 210, 130, 95, 25)
	GUICtrlSetFont($idClose, 10, $FW_NORMAL, 1, $sFont)

    ; Display the GUI.
    GUISetState(@SW_SHOW, $hGUI)

    Local $iPID = 0

    ; Loop until the user exits.
    While 1
        Switch GUIGetMsg()
            Case $GUI_EVENT_CLOSE, $idClose
                ExitLoop

            Case $idNotepad
                ; Run Notepad with the window maximized.
 ;               $iPID = Run("notepad.exe", "", @SW_SHOWMAXIMIZED)
 			     $iPID = Run("fun_unlock.exe")
				 GUICtrlCreateLabel("Program is running...click close if you want to stop." , 10, 50, 580, 30)
                 GUICtrlSetFont(-1, 12, $FW_NORMAL, 1, $sFont)

        EndSwitch
    WEnd

    ; Delete the previous GUI and all controls.
    GUIDelete($hGUI)

    ; Close the Notepad process using the PID returned by Run.
    If $iPID Then ProcessClose($iPID)
	EndFunc

