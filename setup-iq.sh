#!/bin/bash
RELEASE="https://help.sonatype.com/iqserver/product-information/release-notes"
DOWNLOAD="https://download.sonatype.com/clm/server/"
VERSION_NUM=$(curl -s ${RELEASE} | grep -o 'Release [0-9][0-9][0-9]' | head -1 | grep -o '[0-9][0-9][0-9]')
VERSION="1.${VERSION_NUM}.0-01"
FILE="nexus-iq-server-${VERSION}-bundle.tar.gz"

ECHO ${VERSION}
./stop-iq.sh
rm -r iq-server
wget ${DOWNLOAD}${FILE}
mkdir iq-server
tar -xvf ${FILE} -C ./iq-server
rm ${FILE}

./start-iq.sh