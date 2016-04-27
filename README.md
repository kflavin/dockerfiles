# Rsyslog Container #

### Create a Dockerfile. ###

```bash
$ cat Dockerfile
/sbin/apk -q update
apk add rsyslog
rsyslogd -n
/usr/sbin/rsyslogd -n
```

### Build the image ###
```bash
docker build -t myalpine .
```

### Start the syslog container, attach to it, and tail the log file. ###
```bash
docker run -d --name "myalpine" -v /tmp/dev:/dev myalpine
docker exec -it myalpine /bin/ash
tail -f /var/log/messages
```

### Print a log message ###
```bash
docker run -it -v /tmp/dev/log:/dev/log ubuntu:14.04 logger "hello world"
```
