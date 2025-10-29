#!/bin/bash
set -e
echo "🧹 Cleaning up demo Kubernetes resources..."
for ns in staging production; do
  echo "Deleting namespace: $ns"
  kubectl delete namespace $ns --ignore-not-found=true
done
echo "✅ Cleanup complete."
