FROM resin/rpi-buildpack-deps:jessie-curl

RUN wget -q -O - http://apt.mopidy.com/mopidy.gpg | apt-key add - \
  && wget -q -O /etc/apt/sources.list.d/mopidy.list http://apt.mopidy.com/mopidy.list \
  && apt-get update \
  && apt-get install -y --no-install-recommends \
    mopidy


CMD sleep 99999999
