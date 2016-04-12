# Very simple deployment of an Linux VM

This template allows you to deploy a simple Linux VM using a few different options for the Oracle Linux version, using the latest patched version.


````

See: How to install and configure Azure PowerShell https://azure.microsoft.com/en-us/documentation/articles/powershell-install-configure/

Login-AzureRmAccount
Get-AzureRmSubscription
Get-AzureRmSubscription –SubscriptionName "HogeHoge" | Select-AzureRmSubscription

$name = "yamasa"
$namerg = "yamasarg"

$ New-AzureRmResourceGroup -Name $namerg  -Location "Japan West"


ResourceGroupName : yamasarg
Location          : japanwest
ProvisioningState : Succeeded
Tags              :
ResourceId        : /subscriptions/xxxxxxx-xxxxxxxxxx-xxxxxxxxxxxxxx/resourceGroups/yamasarg


New-AzureRmResourceGroupDeployment -Name $name -ResourceGroupName $namerg -adminUserName takekazu.omi -adminPassword $password -dnsLabelPrefix $name -TemplateFile $pwd/azuredeploy.json

````
