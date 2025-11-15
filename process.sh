#!/bin/bash
# Run top in batch mode, limit to 10 lines, sort by CPU, and extract USER and COMMAND columns
top -b -n 1 -o %CPU | tail -n +8 | head -n 10 | awk '{print "top_processes{user=\"" $2 "\",command=\"" $12 "\",cpu=\"" $9 "\"} " $9}' > /var/lib/node_exporter/textfile_collector/top_processes.prom
