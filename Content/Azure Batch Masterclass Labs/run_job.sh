#!/bin/bash

JOBID=jobtest
POOLID=ilastik

az batch job create --id $JOBID --pool-id $POOLID --account-endpoint https://ilastikb.westeurope.batch.azure.com --account-name ilastikb # 
for k in {1..2} 
  do 
    echo "starting task_$k ..."
    az batch task create --job-id $JOBID --task-id "task_$k" --command-line "/mnt/batch/tasks/shared/run_task.sh $k > out.log" --account-endpoint https://ilastikb.westeurope.batch.azure.com --account-name ilastikb
  done
