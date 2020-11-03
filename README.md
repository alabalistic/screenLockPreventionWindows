# ScreenLockPreventionWindows
Powershell script to prevent the screen lock, usefull in corporate setup with strict rules.

By simulating 2 times keypress on the numlock the PC stay awake for 12 hour

How to "Install".
copy the folder "screensaver in C:
rightclick on the Prevent_screensaver.psd1 file / Open with, and assignet it to be open with powershell. Create a shortcut to your Desktop. when you want to prevent screensaver, doble click on the shortcut. Powershell will open, when you want to kill the script, close the Powershell.
works with windows 10

Testing, change the values of the first keystroke to 840 to 1 and the value of second keystroke 0.1 to 1 then if your script is vorking properly the NumLock light will start to blink.
current script runs about 12 Hrs, 51 times 840 sec. you can change this setting acordingly. 

# This is the complete script.

This script runs with user privileges from C:\screensaver
Purpous of the script is to prevent the computer to lock the screen.
Please be aware that there is no harm intention in the creation of this script.
Never use code from the internet if you don'understand what the code do.
___
````Powershell

param($minutes = 51) 				# This is how many times the for loop will run. 12 hours / 14 minutes. After 12 hours the desktop will lock itself.

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 840			# Wait 14 minutes, screensaver comes in the 15th minute.
  $myshell.sendkeys("{NUMLOCK}")		# Simulate Numlock press
  Start-Sleep -Seconds 0.1			# Wait 0.1 seconds 
  $myshell.sendkeys("{NUMLOCK}")		# Simulate Numlock press, to preserve the state of the kayboard.
}

``````
