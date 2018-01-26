#!/bin/bash
#/WORK_LOG/netflow_raw/netflowadmin/incoming/inet-ext/lv-edgeacc1/2017/2017-11/2017-11-28
START_DATE=$(date +"%Y/%m/%d:%H")
DATE_FOR_RWCUT=$(date +"%Y%m%d.%H")
DEST_FOLDER= /WORK_LOG/netflow_raw/netflowadmin/incoming/inet-ext/lv-edgeacc1/$(date +"%Y")/$(date +"%Y-%m")/$(date +"%Y-%m-%d")

touch test777 $DEST_FOLDER


rwfilter --type=all --proto=0-255  --start-date=$START_DATE --sensor=lv-edgeacc2 --data-rootdir=/WORK_LOG/netflow_raw/netflowadmin/incoming/inet-ext/ --site-config-file /etc/silk/silk.conf --pass=stdout | rwcut  >  $DEST_FOLDER/ext2ext-lv-edgeacc1_$DATE_FOR_RWCUT.txt

