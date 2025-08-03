#!/bin/bash

set -e
CLUSTER_NAME="devops-eks-cluster"
REGION="us-east-1"

echo "⛓  Updating kubeconfig..."
aws eks update-kubeconfig --name $CLUSTER_NAME --region $REGION

echo "✅ EKS is now accessible"
kubectl get nodes
