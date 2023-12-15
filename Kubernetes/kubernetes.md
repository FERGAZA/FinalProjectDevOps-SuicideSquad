# Kubernetes:


## Installing and setting up kubectl on Linux
  ```
  sudo apt update
  ```
  ```
  sudo apt install kubectl
  ```
  ```
  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  ```
  ```
  sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
  kubectl --version
  ```

## Creating k8s folder
  ```
  mkdir k8s-cluster
  ```

## Azure login and setting up k8s cluster
  ```
  az login
  ```
  Running 2 commands that appear in our k8s cluster within the Connect via Cloud Shell in Azure Portal, the first one sets up the cluster subscription and the other one downloads cluster credentials.

  ```
  az account set --subscription xxxxxx-xxxx-xxxx-xxx-xxxxxxxx
  az aks get-credentials --resource-group rg-suicidesquad --name aks-cluster-suicide-squad
  ```

## YAML files created.

  - Namespace
  - Frontend Deployment (1 pod)
  - Backend Deployment (3 pods)
  - Database Deployment (1 pod)
  - Frontend NodePort
  - Backend NodePort
  - Frontend - Backend ClusterIP Service
  - Backend - Database ClusterIP Service
  - Load balancer

## Running the k8s commands to deploy my app
  ```
  kubectl create -f app-namespace.yml 
  ```
  ```
  kubectl create -f back-deployment.yml 
  ```
  ```
  kubectl create -f front-deployment.yml 
  ```
  ```
  kubectl create -f data-base-deployment.yml 
  ```
  ```
  kubectl create -f back-node-port-service.yml 
  ```
  ```
  kubectl create -f front-node-port-service.yml 
  ```
  ```
  kubectl create -f front-back-cluster-ip-service.yml 
  ```
  ```
  kubectl create -f back-db-cluster-ip-service.yml 
  ```
  ```
  kubectl create -f loadbalancer.yml 
  ```
  ```
  kubectl get all --namespaces=devopsproject
  ```