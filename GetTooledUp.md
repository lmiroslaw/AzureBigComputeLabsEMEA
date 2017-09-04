# Step 1: Get Tooled Up for Azure Big Compute #

Before you begin to work with Azure Big Compute & HPC, we recommend that you take a few minutes to download and install some relevant Azure client side tools that will make working with Azure a lot faster and easier (and more fun)! These utilities can either be installed on your laptop, or you can provision a  linux or windows VM in Azure, and install them there. 

Most of these tools are universal and run on Linux, Windows or MacOS. 

A good option for Linux folks is to install the Linux tools into the Ubuntu Bash shell on Windows 10. There is a quick HOWTO on this online <a href="https://www.windowscentral.com/how-install-bash-shell-command-line-windows-10">here</a>.
***
## Universal & Essential Tools: 

### Azure CLI - Command Line Interface to manage your Azure datacenter. 

Azure CLI is THE tool to interact with Azure from the command line. You can use to create objects such as virtual machines, networks, scale-sets & clusters, storage, disks, and so on. Azure CLI download and instructions are available <a href="https://docs.microsoft.com/en-us/cli/azure/install-azure-cli">here.</a>

Note that you can also use <a href="https://azure.microsoft.com/en-us/features/cloud-shell/">cloud shell</a> from the <a href="https://portal.azure.com"</a>. 

### Storage Explorer - Utility to help you interact with Azure Storage & Your Data

StorageExplorer is a feature-rich graphical tool for managing Azure Storage resources & data securely. Grab it from <a href="http://storageexplorer.com">storageexplorer.com</a>

* Copy Data to and from Azure, and across Azure storage containers & subscriptions. 
* Share datasets and collaborate with your colleagues inside & outside your organization

### AzCopy - Utility for copying large datasets in and out of Azure efficiently. 
Azcopy is a utility for copying and moving files around to and from Azure or between Azure storage containers. It's more effiicent at copying large datasets comprised or large files or millions of small files, and can easily be incorporated into scripts. 

* <a href="https://docs.microsoft.com/en-us/azure/storage/storage-use-azcopy">Download instructions for AzCopy for Windows.</a>
* <a href="https://docs.microsoft.com/en-us/azure/storage/storage-use-azcopy-linux">Download instructions for AzCopy for Linux.</a>

***
## Azure Batch Tools

These days most of what you need for the common Azure Batch tasks is included in the Azure Batch CLI (see above) under the "az batch" sub-command. However, for the labs we will need some extra tools normally reserved for black belts: 

1) Azure Batch Shipyard 
Information and overview <a href="https://azure.github.io/batch-shipyard/">here</a>. Github repository <a href="https://github.com/Azure/batch-shipyard">. Clone the repository to your workstation and follow the install instructions linked on the main README. 

2) Azure Batch CLI Extensions (Preview)
The <a href="https://github.com/Azure/azure-batch-cli-extensions">Batch CLI Exensions</a> provide a bunch of new advanced functionality for Azure Batch from the CLI including shipyard style templates, Task Factory, automated file upload/download and new package management features. 

3) Batch Labs
Link to executable will be provided by your instructor. However, if you want to have a go yourself - the source repo for Batch Labs is <a href="https://github.com/Azure/BatchLabs">here</a>.

***

## Universal Azure Automation & Development Tools
1) Github & ARM Templates
2) Visual Studio Code & Visual Studio
