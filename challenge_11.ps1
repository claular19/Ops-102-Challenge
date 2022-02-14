# Script Name: 201 Ops Challenge 11
# Author: Lars Clausen
# Date of last revision: 2/12/2022

Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True -Profile Any 

netsh advfirewall firewall add rule name="ICMP Allow incoming request" protocol=icmpv4:8,any dir=in action=allow

reg add "HKLM\System\CurrentControlSet\Control\Terminal Server" /v fdenyTSConnections /t REG_DWORD /d 0 /f

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

Set-SMBServerConfiguration -EnableSMB1Protocol $false -Force
Get-SMBServerConfiguration | Select EnableSMB1Protocol
