#include <MsgBoxConstants.au3>
$mybox=MsgBox(4, "unlock screen", "是否要進入會議模式，不鎖定螢幕?")
if $mybox = 7 then ; if the answer is no
   msgbox(0, "unlock sreen", "OK. Bye!",3) ; show this msgbox
Exit
EndIf 
unlock()
Func unlock()
   While 1
   MouseMove(1000, 5) ; Move the mouse cursor to the x, y position of 1000, 5.
   sleep(10000)
   MouseMove(1010, 5, 5) ; Move the mouse cursor to the x, y position of 1010, 5 and move speend 5.
   sleep(10000)
   WEnd
EndFunc
