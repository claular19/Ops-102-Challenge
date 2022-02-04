# Script Name: 201 Ops Challenge 09
# Author: Lars Clausen
# Date of last revision: 2/3/2022

# Set Event Log variable for efficiency

$Events = Get-EventLog -LogName System

# Set destination of event log to be sent to

$File1 = "C:\Users\Chronobreak\Documents\Event Log Files\Last_24.txt"

# Create event log from past 24 hours and make it a file

$Events -After (Get-Date).AddHours(-24) | Out-File -FilePath $File1

# Set destination of error log to be sent to

$File2 = "C:\Users\Chronobreak\Documents\Error Log Files\errors.txt"

# Create event log of system errors and make it a file

$Events -EntryType Error | Out-File -FilePath $File2

# Print all events with ID of 16 from system event log

$Events -InstanceID 16

# Print most recent 20 events from system event log

$Events -Newest 20

# Print all sources of the 500 most recent entries from system event log. Uses ft -auto to remove ...

$Events -Newest 500 | Group-Object -Property Source -NoElement | ft -auto

#End
