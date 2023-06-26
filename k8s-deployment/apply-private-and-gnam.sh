
kubectl apply -f gnam-api-deployment.yaml
kubectl apply -f privategpt-deployment.yaml
kubectl apply -f vector-store-updater-deployment.yaml
kubectl apply -f web-gui-deployment.yaml

kubectl apply -f privategpt-loadbalancer-service.yaml