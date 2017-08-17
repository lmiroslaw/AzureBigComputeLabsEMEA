# Get Tooled Up for Azure Big Compute #

Before you begin the labs, we recommend that you take a few minutes to download and install some relevant Azure client side tools that will make working with Azure a lot faster and easier. These utilities can either be installed on your laptop, or you can provision a  linux or windows VM in Azure, and install them there. 

A good option for Linux folks is to install the Linux tools into the Ubuntu Bash shell on Windows 10. There is a quick HOWTO on this online <a href="https://www.windowscentral.com/how-install-bash-shell-command-line-windows-10">here</a>.

## Brown Belt Tools: 
1) Azure CLI - Command Line Interface to manage your Azure datacenter. 
2) Storage Explorer - Utility to help you interact with Azure storage objects such as files & object storage. 
3) azcopy - utility for copying large datasets in and out of Azure efficiently. 

## Black Belt Tools: 
1) Azure Batch Shipyard
2) Azure Batch CLI Extensions

***
## Azure CLI 2.0 

Azure CLI is a tool you can use to create objects such as virtual machines, networks, scale-sets & clusters, storage, disks, and so on. It is written in python, so you will need python.

Azure CLI 2.0 download and instructions are available <a href="https://docs.microsoft.com/en-us/cli/azure/install-azure-cli">here.</a>

*** 
## StorageExplorer

StorageExplorer is a feature-rich graphical tool for managing Azure Storage. 

Grab it from <a href="http://storageexplorer.com">storageexplorer.com</a>

* Access multiple accounts and subscriptions across Azure, Azure Stack, and the sovereign Cloud
* Create, delete, view, and edit storage resources
* View and edit Blob, Queue, Table, and CIFS/SMB File Shares
* Obtain shared access signature (SAS) keys
* Available for Windows, Mac, and Linux

## AzCopy

Azcopy is a utility for copying and moving files around to and from Azure or between Azure storage containers. It's more effiicent at copying large datasets comprised or large files or millions of small files, and can easily be incorporated into scripts. 

* <a href="https://docs.microsoft.com/en-us/azure/storage/storage-use-azcopy">Download instructions for AzCopy for Windows.</a>
* <a href="https://docs.microsoft.com/en-us/azure/storage/storage-use-azcopy-linux">Download instructions for AzCopy for Linux.</a>
