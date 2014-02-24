FROM akerl/ssh
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed weechat
RUN mkdir /srv/irclogs
RUN chown akerl:akerl /srv/irclogs
