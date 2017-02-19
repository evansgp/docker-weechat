FROM ubuntu:latest
MAINTAINER Gareth Evans <evans.g.p@gmail.com>

RUN apt-get update -y
RUN apt-get install -y weechat

ENV LANG C.UTF-8

ENV HOME /weechat
RUN addgroup weechat \
    && useradd -d $HOME -m -g weechat -s /bin/bash weechat
USER weechat

RUN mkdir -p $HOME/.weechat
VOLUME ["$HOME/.weechat"]

EXPOSE 9001

ENTRYPOINT ["weechat"]