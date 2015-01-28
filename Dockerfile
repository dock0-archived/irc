FROM dock0/env
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed weechat tmux
ADD firstrun /home/$ADMIN/.firstrun/irc
RUN chown -R $ADMIN:$ADMIN /home/$ADMIN
