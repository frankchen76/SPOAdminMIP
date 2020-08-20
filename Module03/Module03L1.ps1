$adminUrl="https://m365x725618-admin.sharepoint.com"

#get credential
$credStoreName = "SPO-M365x725618"
$psCred = Get-PnPStoredCredential -Name $credStoreName -Type PSCredential
$psCred


#connect to SPO service
Connect-SPOService -Url $adminUrl
Connect-SPOService -Url $adminUrl -Credential $psCred

Disconnect-SPOService

#list SPO PS commands
Get-Command -Module Microsoft.Online.SharePoint.PowerShell

Get-SPOSite | Fl
Get-SPOSite –Detailed | ft Url, CompatibilityLevel
Get-SPOSite –Filter {Url -like "*frank*"} | Ft Url

#remove a site collection
Remove-SPOSite -Identity "https://m365x725618.sharepoint.com/sites/SiteDesignCommunication02"

#check removed a site collection
Get-SPODeletedSite

#restore the removed site collection
Restore-SPODeletedSite –Identity "https://m365x725618.sharepoint.com/sites/SiteDesignCommunication02"

Remove-SPODeletedSite -Identity "https://m365x725618.sharepoint.com/sites/SiteDesignCommunication01"

Get-SPOUser -Site "https://m365x725618.sharepoint.com/sites/FrankTeam1"

#show external user for a site collection
Get-SPOExternalUser -SiteUrl "https://m365x725618.sharepoint.com/sites/FrankCommunication1"

#search external user first name, last name, or email address begins with the text
Get-SPOExternalUser -Filter "frank"

Get-SPOSiteGroup -Site "https://m365x725618.sharepoint.com/sites/FrankTeam1"

Get-SPOTenant

Get-SPOTenantSyncClientRestriction

Get-SPOOrgNewsSite

Set-SPOHomeSite -HomeSiteUrl "https://m365x725618.sharepoint.com"

