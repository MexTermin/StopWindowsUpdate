import subprocess
import os
import time
from tkinter import *

root = Tk()
root.title("Stop Updates")
root.resizable(0,0) 
root.geometry("350x180")
root.eval('tk::PlaceWindow . center')
path = os.getcwd()

def succes():
    root.destroy()
    time.sleep(2)
    subprocess.run("C:\Program Files (x86)\mt\StopUpdates\StopUpdatesByYael.exe", shell=True)

def error():
    root.destroy()

def cmd(commando):
    result = subprocess.run(commando, shell=True)
    try:
        result.check_returncode()
        subprocess.run(path+"\shortcut.vbs", shell=True)
        Label(root, text="Instalaccion Exitosa!", padx= 50, pady = 50,  font = "Arial 12", fg="green").pack()
        Button(root, text = "Aceptar", command=succes,  padx= 10, pady = 10).pack()
        root.mainloop()
    except:
        Label(root, text="Instalacion fallida. Por favor intente de nuevo.", padx= 50, pady = 40,  font = "Arial 13", fg="red").pack()
        Button(root, text = "Aceptar", command=error,  padx= 10, pady = 10).pack()
        root.mainloop()

string = 'robocopy  {0}\install "c:/Program Files (x86)\mt\StopUpdates" *.*  '.format(path)
cmd(string)


