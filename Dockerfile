#
# hddtemp Dockerfile
#

# Pull base image.
FROM ubuntu
MAINTAINER unclebacon

# Install hddtemp
RUN apt-get update && apt-get -y install build-essential hddtemp

ADD files /temp
#ADD scripts /

#RUN ["chmod", "+x", "/install.sh"]
RUN rm -f /usr/sbin/hddtemp
RUN cp /temp/hddtemp /usr/sbin/
RUN chmod +x /usr/sbin/hddtemp
#RUN rm -f /install.sh
#RUN rm -fdr /temp

# Define default command.
# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp $HDDTEMP_ARGS
