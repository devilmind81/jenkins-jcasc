#!/bin/bash

kubectl.exe create configmap jenkins-app1 --from-file=./casc_configs/
sleep 1
kubectl.exe apply -f ./deploy/jenkins_secret.yaml
sleep 1
kubectl.exe apply -f ./deploy/jenkins_deploy.yaml
sleep 1
kubectl.exe apply -f ./deploy/jenkins_service.yaml