# config maps
kubectl apply -f s3-config.yaml

# deployments
kubectl apply -f elastic-deployment.yaml
kubectl apply -f seaweedfs-deployment.yaml
kubectl apply -f gnam-api-deployment.yaml
kubectl apply -f privategpt-deployment.yaml
kubectl apply -f vector-store-updater-deployment.yaml