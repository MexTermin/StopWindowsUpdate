Set objShell = WScript.CreateObject("WScript.Shell")


strUser = CreateObject("WScript.Network").UserName
ficheroAccesoDirecto = "C:\Users\"+strUser+"\Desktop\StopUpdates.lnk"
Set objAccesoDirecto = objShell.CreateShortcut(ficheroAccesoDirecto)
objAccesoDirecto.TargetPath = "C:\Program Files (x86)\mt\StopUpdates\StopUpdatesByYael.exe"
objAccesoDirecto.Arguments = ""
objAccesoDirecto.Description = "Programa para detener la ejecucion de windows updates, by Yael"   
objAccesoDirecto.HotKey = ""
objAccesoDirecto.IconLocation = "C:\Program Files (x86)\mt\StopUpdates\mticono.ico"
objAccesoDirecto.WindowStyle = "1"   
objAccesoDirecto.WorkingDirectory = "C:\Program Files (x86)\mt\StopUpdates"
objAccesoDirecto.Save


strUser = CreateObject("WScript.Network").UserName
ficheroAccesoDirecto = "C:\Users\"+strUser+"\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\StopUpdates.lnk"
Set objAccesoDirecto = objShell.CreateShortcut(ficheroAccesoDirecto)
objAccesoDirecto.TargetPath = "C:\Program Files (x86)\mt\StopUpdates\StopUpdatesByYael.exe"
objAccesoDirecto.Arguments = ""
objAccesoDirecto.Description = "Programa para detener la ejecucion de windows updates, by Yael"   
objAccesoDirecto.HotKey = ""
objAccesoDirecto.IconLocation = "C:\Program Files (x86)\mt\StopUpdates\mticono.ico"
objAccesoDirecto.WindowStyle = "1"   
objAccesoDirecto.WorkingDirectory = "C:\Program Files (x86)\mt\StopUpdates"
objAccesoDirecto.Save

