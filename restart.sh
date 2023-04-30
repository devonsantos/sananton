#!/bin/sh
log=samp.log
dat=`date`
samp="/home/zenoncity/samp03svr/samp03svr"
cd /home/zenoncity/samp03svr
 
echo "${dat} watchdog script starting." >>${log}
while true; do
        echo "${dat} Server exited, restarting..." >>${log}
        mv /home/zenoncity/samp03svr/server_log.txt /home/zenoncity/samp03svr/logs/server_log.`date '+%m%d%y%H%M%S'`
        ${samp} >> $log
	sleep 2
done
