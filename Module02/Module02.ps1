Connect-AzureAD

Get-AzureADDirectoryRoleTemplate | Ft DisplayName, Description

#$role = Get-AzureADDirectoryRoleTemplate | where DisplayName -eq "Company Administrator"
$role = Get-AzureADDirectoryRole | where DisplayName -eq "Company Administrator" 
$role

Get-AzureADDirectoryRoleMember -ObjectId $role.ObjectId

Get-AzureADDirectoryRole where
