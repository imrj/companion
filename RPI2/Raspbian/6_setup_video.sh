#!/bin/bash

if [ $(id -u) -ne 0 ]; then
   echo >&2 "Must be run as root"
   exit 1
fi

set -e
set -x

# live video related packages
apt-get install -y gstreamer1.0-alsa gstreamer1.0-plugins-ugly-doc gstreamer1.0-plugins-base-apps libgstreamer1.0-dev gstreamer1.0-tools gstreamer1.0-plugins-good gstreamer1.0-espeak gstreamer1.0-omx gstreamer1.0-nice gstreamer1.0-omx-rpi gstreamer1.0-omx-rpi-config gstreamer1.0-fluendo-mp3 gstreamer1.0-rtsp gstreamer1.0-plugins-bad gstreamer1.0-plugins-base gstreamer1.0-gnonlin-doc gstreamer1.0-clutter gstreamer1.0-pulseaudio gstreamer1.0-pocketsphinx gstreamer1.0-plugins-bad-doc gstreamer1.0-omx-generic gstreamer1.0-x gstreamer1.0-gnonlin gstreamer1.0-vaapi-doc gstreamer1.0-omx-generic-config gstreamer1.0-libav gstreamer1.0-plugins-base-doc gstreamer1.0-plugins-good-doc gstreamer1.0-dvswitch gstreamer1.0-clutter-3.0 gstreamer1.0-vaapi gstreamer1.0-packagekit libgstreamer1.0-0 gstreamer1.0-omx-bellagio-config gstreamer1.0-plugins-ugly gstreamer1.0-doc

# install OpenCV:
pip3 install numpy opencv-python

# picamera (likely already included from opencv)
pip install "picamera[array]"

