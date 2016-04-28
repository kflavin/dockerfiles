FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install rsyslog
# -n is necessary to prevent rsyslog from backgrounding
COPY ./rsyslog.conf /etc/rsyslog.conf
EXPOSE 514/tcp 514/udp
CMD rsyslogd -n
#VOLUME /dev
