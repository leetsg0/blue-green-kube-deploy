# This script starts minikube and deploys the container to a kubernetes cluster
sudo minikube start --vm-driver=none
sudo kubectl run webapp --image=133823844190.dkr.ecr.us-west-2.amazonaws.com/udacity-hub:mywebapp --port=80
