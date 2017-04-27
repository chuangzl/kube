#!/bin/bash

aliyun_repo=registry.cn-qingdao.aliyuncs.com/chuangzl
google_repo=gcr.io/google_containers

docker_pull(){
  
  docker pull $aliyun_repo/$imageName:$imageVersion    
  docker tag $aliyun_repo/$imageName:$imageVersion  $google_repo/$imageName-amd64:$imageVersion
  docker rmi $aliyun_repo/$imageName:$imageVersion  

}

#pull kube-apiserver
imageName=kube-apiserver
imageVersion=v1.6.0
docker_pull

#pull kube-controller-manager
imageName=kube-controller-manager
imageVersion=v1.6.0
docker_pull

#pull kube-scheduler-amd64
imageName=kube-scheduler
imageVersion=v1.6.0
docker_pull

#pull kube-proxy
imageName=kube-proxy
imageVersion=v1.6.0
docker_pull

#pull etcd
imageName=etcd
imageVersion=3.0.17
docker_pull

#pull pause
imageName=pause
imageVersion=3.0
docker_pull

#pull k8s-dns-sidecar
imageName=k8s-dns-sidecar
imageVersion=1.14.1
docker_pull

#pull k8s-dns-kube-dns
imageName=k8s-dns-kube-dns
imageVersion=1.14.1
docker_pull

#pull k8s-dns-dnsmasq-nanny
imageName=k8s-dns-dnsmasq-nanny
imageVersion=1.14.1
docker_pull
