
$StartTimer = TimerInit() ; Define the initial time we will be comparing to later
$process1 = "joinnetu.exe" ; define the process
$process2 = "fun_unlock.exe" ; Define the executable


Checkprocess() ; Run our checkprocess() function on initial execute
While 1 ; Infinite Loop Condition is always true, you can exit these loops with "ExitLoop"
    If TimerDiff($StartTimer) > 180000 Then ; Only run the conditional code if the difference in time is greater than 3 min (1 min = 60000 Miliseconds)
        _kill() ; run kill() function
		Checkprocess() ; run Checkprocess() process
    EndIf
    Sleep(10) ; So we don't kill the CPU
WEnd ; End of While Loop


Func Checkprocess() 
    If ProcessExists($process1) Then Run($process2); checks if process1 exists.. If yes, it will Run the process2
	$StartTimer = TimerInit() ; Reset the timer since the script just ran
 EndFunc   ;==>Checkprocess


Func _kill()
   while ProcessExists($process2) ;if ($process2) exist
	  ProcessClose($process2) ; kill ($process2)
	  sleep(100) 
   WEnd
EndFunc   ;==>_kill
