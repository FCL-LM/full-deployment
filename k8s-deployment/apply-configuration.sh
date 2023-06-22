# config maps
kubectl apply -f s3-config.yaml

# deployments
kubectl apply -f elastic-deployment.yaml
#kubectl apply -f seaweedfs-deployment.yaml
kubectl apply -f seaweedfs-master-deployment.yaml
kubectl apply -f seaweedfs-volume-deployment.yaml
kubectl apply -f seaweedfs-filer-deployment.yaml
kubectl apply -f seaweedfs-s3-deployment.yaml

kubectl apply -f gnam-api-deployment.yaml
kubectl apply -f privategpt-deployment.yaml
kubectl apply -f vector-store-updater-deployment.yaml
kubectl apply -f web-gui-deployment.yaml

# services
kubectl apply -f privategpt-loadbalancer-service.yaml
kubectl apply -f services.yaml