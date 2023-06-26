# config maps
kubectl apply -f s3-config.yaml

# mount volumes
kubectl apply -f seaweedfs-volume-persistentvolumeclaim.yaml
kubectl apply -f seaweedfs-filer-persistentvolumeclaim.yaml
kubectl apply -f seaweedfs-master-persistentvolumeclaim.yaml
kubectl apply -f gnam-api-persistentvolumeclaim.yaml
kubectl apply -f elastic-search-persistentvolumeclaim.yaml

# deployments
kubectl apply -f elastic-deployment.yaml
kubectl apply -f seaweedfs-master-deployment.yaml
kubectl apply -f seaweedfs-volume-deployment.yaml
kubectl apply -f seaweedfs-filer-deployment.yaml
kubectl apply -f seaweedfs-s3-deployment.yaml

# services
kubectl apply -f services.yaml
