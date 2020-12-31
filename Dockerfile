#
# hddtemp Dockerfile
#

# Pull base image.
FROM ubuntu
MAINTAINER unclebacon

# Install hddtemp
RUN apt-get update && apt-get -y install build-essential hddtemp

# Replace hddtemp with new build
ADD files /temp
RUN rm -f /usr/sbin/hddtemp
RUN cp /temp/hddtemp /usr/sbin/
RUN chmod +x /usr/sbin/hddtemp

# Define default command.
# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp $HDDTEMP_ARGS
