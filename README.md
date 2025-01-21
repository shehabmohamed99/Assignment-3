The docker image using the docker file is pushed to Docker Hub under :
shehab999/my-nginx:v0.1
To pull the image :
# docker pull shehab999/my-nginx:v01


to simulate high CPU usage on the NGINX pod :
kubectl exec -it <nginx-pod-name-under -the deploymentname> -- apt-get update
kubectl exec -it <nginx-pod-name-under -the deploymentname> -- apt-get install -y stress
kubectl exec -it <nginx-pod-name-under -the deploymentname> -- stress --cpu 4 --timeout 300
