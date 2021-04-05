#!/bin/bash
proc_name=$1
self=$$

pid_list=$(ps -T | grep $proc_name | grep -v $self | awk -F " " '{print $1}')
for id in $pid_list
do
	cpucore $id 2>/dev/null
done
