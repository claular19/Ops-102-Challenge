# Script Name: 201 Ops Challenge 10
# Author: Lars Clausen
# Date of last revision: 2/3/2022

# Print active processes by highest CPU time consumption at top

Get-Process | Sort-Object -Property cpu -Descending

# Print active processes by highest Process ID # at top

Get-Process | Sort-Object -Property id -Descending

# Print top 5 active processes by highest Working Set at top

Get-Process | Sort-Object -Property ws -Descending | Select-Object -First 5

# Start Internet Explorer and open a link

Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/

# Start Internet Explorer ten times, using a for loop and each instance opens link

for ($i - 1; $i -le 10; $i++) do { Start-Process -FilePath "C:\Program Files\Internet Explorer\iexplore.exe" https://owasp.org/www-project-top-ten/ }

# Close all Internet Explorer windows

Stop-Process -Name "Internet Explorer"

# Kill process by Process ID (Internet Explorer)

Stop-Process -Id 7176
