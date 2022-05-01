# toolbox
#### Small Alpine based toolbox for Docker on BurmillaOS

[![Build Status](https://travis-ci.org/chriswayg/toolbox.svg?branch=master)](https://travis-ci.org/chriswayg/toolbox)
[![](https://images.microbadger.com/badges/image/chriswayg/toolbox.svg)](https://microbadger.com/images/chriswayg/toolbox)

This toolbox includes general networking and admin tools, nano and vim text editors, rsync for backup, git and many tools geared towards performance metric gathering and debugging: Some of these tools include generic ones like htop, atop; more specific tools like iostat, iotop, pidstat and mpstat; network oriented tools like tcpdump, iftop, iperf and the iproute2 tools; and strace/ltrace for tracing. These are added to the tiny base install of Alpine, keeping the whole image as small as possible.

Forked from [chriswayg/toolbox](https://github.com/chriswayg/toolbox)

#### List of Tools/Packages:

```
file atop htop ltrace strace
sysstat bridge-utils ca-certificates
iftop iperf iproute2 net-tools nmap tcpdump
bash bash-completion curl gettext logrotate ncurses nano
ncdu hdparm screen pciutils psmisc tree
speedtest-cli shadow pv sslscan
git coreutils grep dig python2
```

Check the dockerfile for the complete list of tools.

Initialize the toolbox:
```
docker run -it --name toolbox -v /:/media/root --ipc=host --net=host --pid=host chriswayg/toolbox
```

Run a command: `docker exec toolbox dig`
Enter the toolbox: docker start -ia toolbox



Inside of the toolbox, the machine's filesystem is mounted to /media/root


#### Links
[https://coreos.com/os/docs/latest/install-debugging-tools.html](https://web.archive.org/web/20201024122519/https://coreos.com/os/docs/latest/install-debugging-tools.html) (via Archive.org since CoreOS is EOL and docs are offline)

---
##### License:
- MIT
