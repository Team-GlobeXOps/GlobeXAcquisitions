Write-Host "What would you like for this computers name to be?"
$NewName = Read-Host
Rename-Computer -NewName $NewName

$Adapter = Get-NetAdapter -Name "Ethernet" -Physical

$Index = $Adapter[0].ifIndex

set-DnsClientServerAddress -InterfaceIndex $Index -ServerAddresses ("8.8.8.8","1.1.1.1")

Write-Host "Enter an IPv4 address to set."
$NewIP = Read-Host
Write-Host "Enter the Default Gateway"
$NewGateway = Read-Host

New-NetIPAddress -InterfaceIndex $Index -IPAddress $NewIP -PrefixLength 24 -DefaultGateway $NewGateway