#!/bin/bash

SECRET=$(kubectl -n argo-system get sa wf-argo-workflows-server -o json | jq -r '.secrets[0].name')
ARGO_TOKEN="Bearer $(kubectl -n argo-system get secret $SECRET -o json | jq -r '.data.token' | base64 --decode)"
echo "$ARGO_TOKEN"
echo
echo "$ARGO_TOKEN" | pbcopy
echo "clipboard copied"
