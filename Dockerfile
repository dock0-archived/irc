FROM dock0/env
MAINTAINER akerl <me@lesaker.org>
RUN pacman -Syu --noconfirm --needed weechat python2
ADD firstrun /home/$ADMIN/.firstrun/irc
RUN chown -R $ADMIN:$ADMIN /home/$ADMIN
