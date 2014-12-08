#!/bin/sh

##
# Install the latest stable release of CesiumJS
#

CESIUM_VERSION=1.3

mkdir /tmp/cesium /var/www/cesium || exit 1
cd /tmp/cesium || exit 1

# Get Cesium if we need to
if [ ! -f /tmp/local/Cesium-${CESIUM_VERSION}.zip ]; then
    wget --no-verbose --directory-prefix=/tmp/local https://cesiumjs.org/releases/Cesium-${CESIUM_VERSION}.zip || exit 1
fi

unzip /tmp/local/Cesium-${CESIUM_VERSION}.zip || exit 1
mv Apps ThirdParty Build /var/www/cesium/ || exit 1
