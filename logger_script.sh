#!/bin/bash
currentDate=`date`
/usr/bin/clamscan -i -r -o -l /var/log/clamdscan.log --no-summary --exclude-dir="^/sys" --exclude-dir="^/proc" / | logger -t CLAMAV
echo "Last Scanned: $currentDate" | logger -t CLAMAV