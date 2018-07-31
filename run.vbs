X=InputBox("Enter mod name", "MTModload", "")
Xx=InputBox("Enter game name", "MTModload", "")
Dim objshell
Set objshell = WScript.CreateObject("WScript.shell")
objshell.run ".\bat\loader.bat "+X+" "+Xx
Set objshell = Nothing