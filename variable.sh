#!/bin/sh
export CI=true
DEST_DIR=gaston
jfrog rt dl fleetops-local/simple-project-1.0-SNAPSHOT.jar $DEST_DIR --url http://64.225.51.239:8082/artifactory/ --user admin --password Portos-dslys@25091977
