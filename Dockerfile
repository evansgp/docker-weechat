FROM alpine
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

RUN apk update \
    && apk upgrade

RUN apk add weechat\
    bash\
    && rm -rf /var/cache/apk/*

ENV LANG C.UTF-8

ENV HOME /weechat
RUN addgroup weechat \
    && adduser -D -h $HOME -s /bin/bash -G weechat weechat
USER weechat

RUN mkdir -p $HOME/.weechat
VOLUME ["$HOME/.weechat"]

EXPOSE 9001

ENTRYPOINT ["weechat"]