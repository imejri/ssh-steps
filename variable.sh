#!/bin/sh
export CI=true
jfrog rt dl fleetops-local/simple-project-1.0-SNAPSHOT.jar --url http://64.225.51.239:8082/artifactory/ --user admin --password Portos-dslys@25091977
