#!/bin/bash

kubeadm init --service-cidr=172.16.128.0/24 --kubernetes-version=v1.6.0 --apiserver-advertise-address=10.63.55.7 --pod-network-cidr=10.244.0.0/16

export KUBECONFIG=/etc/kubernetes/admin.conf 
 
kubectl create -f ./kube-flannel-rbac.yml

kubectl apply -f ./kube-flannel.yml

kubectl get pod --all-namespaces -o wide

kubectl taint nodes --all  node-role.kubernetes.io/master-

