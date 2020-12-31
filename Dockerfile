#
# hddtemp Dockerfile
#

# Pull base image.
FROM ubuntu
MAINTAINER unclebacon

# Install hddtemp
RUN apt-get update && apt-get -y install build-essential hddtemp

ADD files /temp
ADD scripts /

RUN /bin/sh /install.sh && rm -f /install.sh

# Define default command.
# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp $HDDTEMP_ARGS
