# Very simple deployment of an Linux VM

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-vm-simple-linux%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F101-vm-simple-linux%2Fazuredeploy.json" target="_blank">
    <img src="http://armviz.io/visualizebutton.png"/>
</a>


This template allows you to deploy a simple Linux VM using a few different options for the Ubuntu Linux version, using the latest patched version. This will deploy in West US on a D1 VM Size.


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


```
$ mkdir ~/.tsung/
$ cp /usr/share/doc/tsung/examples/http_simple.xml ~/.tsung/tsung.xml
```

edit ~/.tsung/tsung.xml for you


http://tsung.erlang-projects.org/user_manual/installation.html


The default configuration file is ~/.tsung/tsung.xml (there are several sample files in /usr/share/doc/tsung/examples).
Log files are saved in ~/.tsung/log/. A new subdirectory is created for each test using the current date and time as name, e.g. ~/.tsung/log/20040217-0940.

tsung -f myconfigfile.xml start
