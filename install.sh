kubectl apply -f ./metrics-server/components.yaml
kubectl apply -f ./nginx-ingress/deploy.yaml
kubectl apply -f ./dashboard/dashboard.yaml
helm dependency build ./helm/loki-grafana
helm dependency update ./helm/loki-grafana
helm install grafana ./helm/loki-grafana --set-file loki-stack.prometheus.extraScrapeConfigs=./helm/loki-grafana/prometheus-consul-config.yaml
cd ./docker-registry
docker-compose up -d
cd ..
