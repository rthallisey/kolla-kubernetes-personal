#!/bin/sh

for pod in `ls ../kubernetes/pods/*.yaml`; do
    kubectl create -f $pod
fi
