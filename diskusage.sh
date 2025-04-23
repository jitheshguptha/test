#! /bin/bash

USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$USAGE" -ge 80 ]; then
  echo "Warning: Root partition is ${USAGE}% full" >> disk_alert.log
fi
