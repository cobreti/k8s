helm dependency build ./helm/loki-grafana
helm dependency update ./helm/loki-grafana
helm install grafana ./helm/loki-grafana --set-file loki-stack.prometheus.extraScrapeConfigs=./helm/loki-grafana/prometheus-consul-config.yaml --wait
