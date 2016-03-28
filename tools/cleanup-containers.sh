#!/bin/bash

pods=( keystone )
services=( keystone-admin
           keystone-public )

for service in "${services[@]}"; do
    kubectl delete service $service
done

for pod in "${pods[@]}"; do
    kubectl delete pod $pod
done
