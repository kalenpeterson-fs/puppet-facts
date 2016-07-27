#!/bin/bash
for disk in `ls /sys/block`
do
  sched=`cat /sys/block/$disk/queue/scheduler`
  if [[ $sched == 'none' ]]; then
    echo $disk"_sched=none"
  else
    echo $disk"_sched="`echo $sched |grep -oP '\[.+\]' |sed 's/^.\(.*\).$/\1/'`
  fi
done
