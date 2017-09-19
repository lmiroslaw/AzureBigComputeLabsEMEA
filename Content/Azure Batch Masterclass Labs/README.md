
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

Create a pool called ilastik  and define the size of the VMs in the pool (here Standard_D11) and the Operating System

```az batch pool create  --id ilastik --image "Canonical:UbuntuServer:16.04.0-LTS" --node-agent-sku-id "batch.node.ubuntu 16.04"  --vm-size Standard_D11 --verbose```

## 4. Configure the pool

Configure the pool by assigning the JSON configuration file to the pool.

``` az batch pool set --pool-id ilastik --json-file pool-shipyard.json --account-endpoint https://ilastikb.westeurope.batch.azure.com --account-name ilastikb ```

## 5. Resize the pool

```az batch pool resize --pool-id ilastik --target-dedicated 2 --account-endpoint https://ilastikb.westeurope.batch.azure.com --account-name matlabb```

alternatively you can create a pool with low priority VMs as follows:

```az batch pool resize --pool-id ilastik0 --target-dedicated 0 --target-low-priority-nodes 2  --account-endpoint https://ilastikb.westeurope.batch.azure.com --account-name ilastikb```

## Create a job and tasks

You can create a job and the tasks by using the script similar to this one.




