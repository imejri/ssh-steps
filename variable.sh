#!/bin/sh
export CI=true
VERSION="1.0-SNAPSHOT"
DEST_DIR=gaston
ARTIFACTORY_KEY=$2
USER=$1
jfrog rt dl fleetops-local/simple-project-'$VERSION'.jar --url http://64.225.51.239:8082/artifactory/ --user '$USER' --password '$ARTIFACTORY_KEY'
