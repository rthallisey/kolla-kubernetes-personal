#!/bin/sh

for service in `ls ../kubernetes/services/*.yaml`; do
    #echo "Creating service for $service"
    kubectl create -f $service
done
