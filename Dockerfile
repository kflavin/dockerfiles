FROM alpine:3.3
RUN /sbin/apk update -q
RUN /sbin/apk add rsyslog
# -n is necessary to prevent rsyslog from backgrounding
CMD /usr/sbin/rsyslogd -n
#VOLUME /dev
