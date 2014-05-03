FROM dock0/ssh
MAINTAINER akerl <me@lesaker.org>

RUN pacman -Syu --noconfirm --needed weechat

RUN mkdir /srv/irclogs
RUN chown akerl:akerl /srv/irclogs

ADD firstrun /home/$ADMIN/.firstrun/irc
