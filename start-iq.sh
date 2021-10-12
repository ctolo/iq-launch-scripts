#!/bin/bash

./stop-iq.sh

JAVA_OPTIONS="-Xmx4096m -XX:MaxPermSize=128m -Djava.util.prefs.userRoot=./sonatype-work/javaprefs"
java $JAVA_OPTIONS -jar ./iq-server/nexus-iq-server-*.jar server ./iq-server/config.yml > /dev/null 2>&1 &
echo "Started nexus-iq-server"
