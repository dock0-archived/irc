FROM dock0/ssh
MAINTAINER akerl <me@lesaker.org>

RUN pacman -Syu --noconfirm --needed weechat

RUN mkdir /srv/irclogs
RUN chown akerl:akerl /srv/irclogs

ADD rc.local /etc/init.d/rcS

RUN echo -e "US\nNJ\nLinodia\n\nLes Aker\nme@lesaker.org\n" | openssl req -nodes -newkey rsa:2048 -keyout ~/.weechatssl.pem -x509 -days 365 -out ~/.weechatssl.pem

