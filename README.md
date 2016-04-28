# Rsyslog Container #

### Create a Dockerfile. ###

Create a file called "Dockerfile" in your working directory (or just clone this repository).

```bash
$ cat Dockerfile
FROM alpine:3.3
RUN /sbin/apk update -q
RUN /sbin/apk add rsyslog
CMD /usr/sbin/rsyslogd -n
```

### Build the image ###

With the Dockerfile in your working directory, build the image.

```bash
docker build -t myalpine .
```

### Start the syslog container, attach to it, and tail the log file. ###

Run your image, and then attach to it to tail /var/log/messages.

```bash
docker run -d --name "myalpine" -v /tmp/dev:/dev myalpine
docker exec -it myalpine /bin/ash
tail -f /var/log/messages
```

### Print a log message ###

Run a separate container to issue a logging message.

```bash
docker run -it -v /tmp/dev/log:/dev/log ubuntu:14.04 logger "hello world"
```

The log message should appear in the first container.
