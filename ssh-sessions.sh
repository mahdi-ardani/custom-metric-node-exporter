#!/bin/bash

who | awk '{count[$1]++} END {for (user in count) print "ssh_active_sessions{username=\"" user "\"} " count[user]}' > /var/lib/node_exporter/textfile_collector/ssh_sessions.prom
TOTAL=$(who | wc -l)
echo "ssh_active_sessions_total $TOTAL" >> /var/lib/node_exporter/textfile_collector/ssh_sessions.prom
