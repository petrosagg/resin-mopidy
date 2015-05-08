#!/bin/bash

mkdir -p /.config/mopidy

MOPIDY_CONFIG='/.config/mopidy/mopidy.conf'

touch "$MOPIDY_CONFIG"

cat >> "$MOPIDY_CONFIG" <<-EOF
[http]
hostname = ${MOPIDY_HTTP_HOSTNAME:-::}
port = ${MOPIDY_HTTP_PORT:-80}

[mpd]
hostname = ${MOPIDY_MPD_HOSTNAME:-::}
port = ${MOPIDY_MPD_PORT:-6600}

[soundcloud]
enabled = ${MOPIDY_SOUNDCLOUD_ENABLED:-false}
auth_token = ${MOPIDY_SOUNDCLOUD_AUTHTOKEN:-}

[spotify]
enabled = ${MOPIDY_SPOTIFY_ENABLED:-false}
username = ${MOPIDY_SPOTIFY_USERNAME:-}
password = ${MOPIDY_SPOTIFY_PASSWORD:-}

[touchscreen]
enabled = ${MOPIDY_PITFT_ENABLED:-false}

[youtube]
enabled = ${MOPIDY_YOUTUBE_ENABLED:-true}
EOF

# Disable mouse until resin supports the pitft touchscreen
export SDL_NOMOUSE=1

if [ "${MOPIDY_PITFT_ENABLED}" == 'true' ]; then
  if [ ! -c /dev/fb1 ]; then
    modprobe spi-bcm2708
    modprobe fbtft_device name=pitft verbose=0 rotate=270

    sleep 1

    mknod /dev/fb1 c $(cat /sys/class/graphics/fb1/dev | tr ':' ' ')
  fi
fi

mopidy
