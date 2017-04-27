#!/bin/bash

imageName=kube-apiserver
imageVersion=v1.6.0
docker pull $aliyun_repo/$imageName:$imageVersion    
docker tag $aliyun_repo/$imageNamer:$imageVersion  $google_repo/$imageName-amd64:$imageVersion
docker rmi $aliyun_repo/$imageName:$imageVersion  

