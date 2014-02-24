FROM akerl/ssh:latest
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed weechat
