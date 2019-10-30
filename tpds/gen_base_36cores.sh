#!/bin/bash

FIRST_CORE=0
LAST_CORE=35
TOTAL_UTIL=0.75
NUM_RESOURCES=1
RESOURCES_TYPE=mod
#REQ_PER_RES=128

for num_tasks in 8
do
	for i in {1..100}
	do
		/usr/bin/python taskgen_wlocks_base.py ${FIRST_CORE} ${LAST_CORE} ${num_tasks} ${NUM_RESOURCES} ${RESOURCES_TYPE} ${TOTAL_UTIL}
		#/usr/bin/python taskgen_wlocks_base2.py ${FIRST_CORE} ${LAST_CORE} ${num_tasks} ${REQ_PER_RES} short ${TOTAL_UTIL}
	done
done

echo "Finished!"