kubectl apply -f ./metrics-server/components.yaml
kubectl apply -f ./nginx-ingress/deploy.yaml
kubectl apply -f ./dashboard/dashboard.yaml
cd ./docker-registry
docker-compose up -d
cd ..
