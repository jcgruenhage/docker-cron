FROM    jcgruenhage/baseimage-alpine
MAINTAINER  Jan Christian Grünhage <jan.christian@gruenhage.xyz>

RUN     apk add --update \
            go \
            git \
            build-base \
	    wget \
        && mkdir /tmp/gopath \
        && export GOPATH=/tmp/gopath \
        && go get git.jcg.re/jcgruenhage/alpine-cron-scheduler \
        && apk del --purge \
            go \
            build-base \
            git \
        && mv $GOPATH/bin/alpine-cron-scheduler /usr/local/bin \
        && rm -rf \
            /tmp \
            /var/cache/apk/* 
ADD     root    /
