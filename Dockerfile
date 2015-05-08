FROM resin/rpi-buildpack-deps:jessie-curl

RUN wget -q -O - http://apt.mopidy.com/mopidy.gpg | apt-key add - \
  && wget -q -O /etc/apt/sources.list.d/mopidy.list http://apt.mopidy.com/mopidy.list \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    gstreamer0.10-plugins-bad \
    mopidy \
    mopidy-soundcloud \
    mopidy-spotify

RUN pip install Mopidy-Youtube

RUN pip install Mopidy-MusicBox-Webclient

CMD sleep 99999999
