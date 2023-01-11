Import-Module ActiveDirectory
Import-Module ADDSDeployment

Add-WindowsFeature AD-Domain-Services

# InstallNewForest.ps1
# Create New Forest, add Domain Controller
$domainname = “globex.msft”
$netbiosName = “GLOBEX”
Install-ADDSForest -CreateDnsDelegation:$false ` -DatabasePath “C:\Windows\NTDS” ` -DomainMode “Win2019” ` -DomainName $domainname ` -DomainNetbiosName $netbiosName ` -ForestMode “Win2019” ` -InstallDns:$true ` -LogPath “C:\Windows\NTDS” ` -NoRebootOnCompletion:$false ` -SysvolPath “C:\Windows\SYSVOL” ` -Force:$true

# Organizational Unit Automation

$OrgList = @("Marketing", "Finance", "HR", "Information", "Operations", "Technology")

Foreach($Org in $OrgList) {
New-ADOrganizationalUnit $Org}

# Filepath should be updated for where the CSV to use is.
$UserList = Import-Csv -Path 'new.csv'

# User creation automation
foreach($User in $UserList) {
    $NewUser = @{
        Name = $User.first + " " + $User.last
        GivenName = $User.first
        SurName = $User.last
        SamAccountName = $User.first + " " + $User.last
        Department = $User.department
        Title = $User.title
        UserPrincipalName = $User.first.Substring(0,1) + $User.last + "@globex.com"
        Path = "OU=" + $User.department + ", DC=globex, DC=com"
        Enabled = $true
        }
    New-ADUser $NewUser
}