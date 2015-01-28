FROM dock0/env
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --noconfirm --needed weechat python2-pip base-devel tmux
RUN pip2 install python-potr
ADD firstrun /home/$ADMIN/.firstrun/irc
RUN chown -R $ADMIN:$ADMIN /home/$ADMIN
