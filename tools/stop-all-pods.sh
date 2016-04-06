#!/bin/sh

for pod in `ls ../kubernetes/pods/*.yaml`; do
    kubectl delete -f $pod
done
