#!/bin/sh

# This script executes in /mnt/batch/tasks/startup/wd

apt-get install -y unzip 
unzip drosophila.zip -d $AZ_BATCH_NODE_SHARED_DIR

# Retrieve Ilastik
wget http://files.ilastik.org/ilastik-1.2.2-Linux.tar.bz2 -P $AZ_BATCH_NODE_SHARED_DIR
cd $AZ_BATCH_NODE_SHARED_DIR # Note: changing a working directory to /mnt/batch/tasks/shared 
tar xjf ilastik-1.*-Linux.tar.bz2

#$AZ_BATCH_NODE_SHARED_DIR points to /mnt/batch/tasks/shared 

