#!/bin/bash

if [ ! -c /dev/fb1 ]; then
  modprobe spi-bcm2708
  modprobe fbtft_device name=pitft verbose=0 rotate=270

  mknod /dev/fb1 c $(cat /sys/class/graphics/fb1/dev | tr ':' ' ')
fi

sleep 9999999
