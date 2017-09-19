# Azure Batch Master Class Lab #

This tutorial shows how to run Ilastik on Azure Batch. In order to start you need:
- zip file with the dependencies
- input data
- deploy_script.sh that prepares the nodes for execution
- run_task.sh script that executes the actual task
- pool configuration 

Files should be uploaded to Azure Storage in advance using Azure CLI. We also assume Azure Batch named ilastikb has been created beforehand.

## 1. Create a deployment script  
This script contains the installation file as well as the Ilastik workflow that analyzes the images.
See deploy_script.sh

## 2. Create a pool configuration 

The pool configuration defines the startup task and points to the files that need to be downloaded.

## 3. Create a pool

Create a pool with Ubuntu 16.04 and define the size of the VMs in the pool (here Standard_D11)

```az batch pool create  --id ilastik --image "Canonical:UbuntuServer:16.04.0-LTS" --node-agent-sku-id "batch.node.ubuntu 16.04"  --vm-size Standard_D11 --verbose```

## 4. Configure the pool

Configure the pool by assigning the JSON configuration file to the pool
``` az batch pool set --pool-id ilastik --json-file pool-shipyard.json --account-endpoint https://matlabb.westeurope.batch.azure.com --account-name matlabb ```
