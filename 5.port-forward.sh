#!/bin/bash

kubectl port-forward --namespace argo-system svc/wf-argo-workflows-server 8080:80 &
