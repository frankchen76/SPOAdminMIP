$url="https://m365x725618.sharepoint.com/sites/FrankTeam1"

#get credential
$credStoreName = "SPO-M365x725618"
$psCred = Get-PnPStoredCredential -Name $credStoreName -Type PSCredential
$psCred

#install it from PowerShellGet
Install-Module SharePointPnPPowerShellOnline

#check version
Get-Module SharePointPnPPowerShell* -ListAvailable | Select-Object Name,Version | Sort-Object Version –Descending

#check all cmdlets
get-command -module SharePointPnPPowerShellOnline

#update module
Update-Module SharePointPnPPowerShellOnline

#connect to SPO Site. 
Connect-PnPOnline –Url $url –UseWebLogin 
Connect-PnPOnline –Url $url -Credentials $credStoreName
