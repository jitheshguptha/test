#!/bin/bash

# user_report.sh
last -R | grep "$(date '+%b %e')" > user_report.txt

