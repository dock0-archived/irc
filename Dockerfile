FROM akerl/ssh
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed weechat
