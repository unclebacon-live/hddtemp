# hddtemp

docker container for hddtemp:
http://savannah.nongnu.org/projects/hddtemp

NOTE: This repository will install hddtemp in the docker container from apt repositories. I do not maintain the hddtemp project however this version does support NVMe drives.

Example:
```
docker run -d \
--privileged=true 
--name="HDDTemp" \
-e HDDTEMP_ARGS="-q -d -F /dev/sd*" \
-e TZ="America/Toronto" \
unclebacon/hddtemp
```

The hddtemp.db file was obtained from:
http://gnu.mirrors.pair.com/savannah/savannah/hddtemp/hddtemp.db

I do not know how up-to-date that file is. I suspect it has not been maintained...
Therefore I decided to copy it into this repository and have made a couple additions.
The hddtemp.db file in this repository will get loaded into the container.

Enjoy!
