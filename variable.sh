#!/bin/sh
export CI=true
DEST_DIR=gaston
ARTIFACTORY_KEY=$2
USER=$1
jfrog rt dl fleetops-local/simple-project-1.0-SNAPSHOT.jar $DEST_DIR/ --url http://64.225.51.239:8082/artifactory/ --user $USER --password $ARTIFACTORY_KEY
