# This script runs with user privileges from C:\screensaver
# Purpous of the script is to prevent the computer to lock the screen.
# Please be aware that there is no harm intention in the creation of this script 

param($minutes = 51) 				# This is how many times the for loop will run. 12 hours / 14 minutes. After 12 hours the desktop will lock itself.

$myshell = New-Object -com "Wscript.Shell"

for ($i = 0; $i -lt $minutes; $i++) {
  Start-Sleep -Seconds 840			# Wait 14 minutes, screensaver comes in the 15th minute.
  $myshell.sendkeys("{NUMLOCK}")		# Simulate Numlock press
  Start-Sleep -Seconds 0.1			# Wait 0.1 seconds 
  $myshell.sendkeys("{NUMLOCK}")		# Simulate Numlock press, to preserve the state of the kayboard.
}
