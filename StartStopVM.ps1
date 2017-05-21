<#
    .DESCRIPTION
        

    .NOTES
       
#>
workflow StartStopVM
{
   $Conn = Get-AutomationConnection -Name AzureRunAsConnection
    Add-AzureRMAccount -ServicePrincipal -Tenant $Conn.TenantID `
    -ApplicationId $Conn.ApplicationID -CertificateThumbprint $Conn.CertificateThumbprint
   # Start-AzureRmVM -Name 'Summit2017-VM-ONOFF' -ResourceGroupName 'summit2017_rg'
   Stop-AzureRmVM -Name 'Summit2017-VM-ONOFF' -ResourceGroupName 'summit2017_rg'
}