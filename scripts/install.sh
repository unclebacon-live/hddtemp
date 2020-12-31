#!/bin/sh

# replace hddtemp executable
rm -f /usr/sbin/hddtemp
cp /temp/hddtemp /usr/sbin/
chmod +x /usr/sbin/hddtemp
