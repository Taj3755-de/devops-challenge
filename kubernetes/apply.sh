#!/bin/bash
set -e
ENV=$1
if [[ -z "$ENV" ]]; then
  echo "Usage: ./apply.sh [staging|production]"
  exit 1
fi
if [[ ! -d "manifests/$ENV" ]]; then
  echo "Environment folder manifests/$ENV not found!"
  exit 1
fi
echo "Deploying $ENV environment..."
kubectl apply -f manifests/$ENV/
echo "$ENV environment deployed successfully."
