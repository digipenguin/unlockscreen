#include <MsgBoxConstants.au3>

;$mybox=MsgBox(4, "unlock screen", "是否要進入會議模式?")
;if $mybox = 7 then ; if the answer is no
;   msgbox(0, "unlock sreen", "OK. Bye!",3) ; show this msgbox
;Exit
;EndIf



unlock()
Func unlock()
   While 1
   Local $aPos = MouseGetPos()
   MouseMove($aPos[0]+5, $aPos[1]) ; Move the mouse cursor to current position plus 5 (X).
   sleep(10000)
   Local $aPos2 = MouseGetPos()
   MouseMove($aPos2[0]+5, $aPos2[1]) ; Move the mouse cursor to current position plus 5 (X).
   sleep(10000)
   WEnd
EndFunc
