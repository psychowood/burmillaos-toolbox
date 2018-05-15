FROM alpine
MAINTAINER Christian Wagner <chriswayg@gmail.com>
ENV TERM=xterm
WORKDIR /media/root

# most utilities are from the latest stable alpine release
# added some utilities that are only available in edge, community or testing
RUN cat /etc/os-release && \
    echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
    echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
    echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories && \
    apk --no-cache add --update \
        atop \
        bash \
        bash-completion \
        bridge-utils \
        ca-certificates \
        coreutils \
        dstat@testing \
        file \
        gettext \
        git \
        grep \
        hdparm \
        htop \
        iftop \
        iperf \
        iproute2 \
        logrotate \
        ltrace \
        nano \
        ncdu \
        ncurses \
        ncurses-terminfo \
        net-tools \
        nmap \
        obnam \
        pciutils \
        psmisc \
        pv \
        screen \
        shadow \
        speedtest-cli \
        strace \
        sysstat \
        tar \
        tcpdump \
        tini@community \
        tree \
        xz \
        zip

VOLUME ["/media/root"]

ENTRYPOINT ["tini", "--"]

CMD ["bash"]
