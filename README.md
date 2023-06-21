# full-deployment
Full deployment of the FCL-LM project to see if it works (locally for now)


## Steps for the deploy in local with docker compose
Since the direct dependency on the models loaded into the seaweedfs of the privateGPT container, the process of getting up the application is divided in three steps

### First step
First run the services that do not depend directly on the data loaded in the seaweedfs to get them up and working
```bash
docker compose up gnam-api elastic master volume filer s3 
```

check the health of the gnam-api after everything has finished the initialization:
```bash
curl -i http://localhost:9090/health
```
### Second step
Then create the _models_ bucket with the S3 API (minIO client, awscli, etc...) and load the models into the seaweedfs.

In the case of the minIO client (following the s3-config file shared here), the command to set the credentials is the following 
```bash
mc alias set seaweedfs http://localhost:8333 adminadmin adminadmin
```

To create the bucket run
```bash
mc mb seaweedfs/models
```

And to copy the model weights into the bucket run
```bash
mc cp /path/to/local/modelfile.bin seaweedfs/models/model.bin
```

Control if the models were loaded with 
```bash
mc ls /path/to/local/modelfile.bin seaweedfs/models/model.bin
```
### Third step
```bash
docker compose up privategpt vector-store-updater web-gui
```

## Deploy in kubernetes
To deploy to kubernetes, the requirements are a k8s cluster where to deploy the application and _kubectl_ working and connected to the cluster.

To deploy the application to the cluster, run:
```bash
cd k8s-deployment
chmod +x apply-configuration.sh 
./apply-configuration.sh
```

TODO expose the services