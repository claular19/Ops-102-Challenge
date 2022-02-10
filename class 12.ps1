# Set function that creates a local file and displays ipconfig inside it

Function Begin { 
	New-Item network_report.txt
	ipconfig /all | Out-File network_report.txt
}

Begin

# Uses Select-String to search txt file and return ipv4 address

Set-Variable -Name "response" -Value "Here is the ipv4 address"
echo $response
Select-String -Path "network_report.txt" -Pattern 'ipv4'

Remove-Item .\network_report.txt
