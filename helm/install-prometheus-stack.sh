#!/bin/bash
set -e

NAMESPACE="monitoring"

echo "🛠️  Creating namespace: $NAMESPACE"
kubectl create namespace $NAMESPACE || true

echo "📦 Adding Prometheus Helm repo"
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

echo "🚀 Installing kube-prometheus-stack"
helm upgrade --install kube-prometheus-stack prometheus-community/kube-prometheus-stack \
  -n $NAMESPACE \
  -f values/prometheus-values.yaml

echo "✅ Prometheus + Grafana stack deployed"
