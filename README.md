# custom-metric-node-exporter

These two scripts are provided in order to create a custom metric for Prometheus. 

In order to use these scripts, just define a "cronjob" for these to get exceuted for example in every 5 minutes. when the scripts get exceuted, the result will be written into a file with this path ---> /var/lib/node_exporter/textfile_collector

Add the following line in Node Exporter Service file and then restart.

then you can go to Prometheus and inspect the SSH Sessions and top 10 processes on the server.



ExecStart=/usr/local/bin/node_exporter --collector.textfile.directory=/var/lib/node_exporter/textfile_collector