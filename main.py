import subprocess
import time
#...
def cmd(commando):

    subprocess.run(commando, shell=True)

while True:
    time.sleep(7)
    cmd("net stop wuauserv")