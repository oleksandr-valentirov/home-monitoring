#!/bin/sh

nfacctd -f /etc/pmacct/pmacct.conf &

while true; do
    logrotate /etc/logrotate.d/pmacct
    sleep 60
done
