# Helm + Push plugin

## Overview
This container provides the Helm client for use with Kubernetes along with the [Chart Museum Push](https://github.com/chartmuseum/helm-push) plugin installed.

## Run with tunneling
`kubectl run -it helm --env=HELM_HOST=<HOST>:<PORT> --image=momenton/k8s-helm-push --command /bin/sh -n kube-system --rm=true` 

## Run without tunneling
`kubectl run -it helm --image=momenton/k8s-helm-push --command /bin/sh -n kube-system --rm=true`


