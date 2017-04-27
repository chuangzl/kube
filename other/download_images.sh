#!/bin/bash

aliyun_repo=registry.cn-qingdao.aliyuncs.com/chuangzl
google_repo=gcr.io/google_containers
	
imageName=kube-apiserver
imageVersion=v1.6.0
docker pull $aliyun_repo/$imageName:$imageVersion    
docker tag $aliyun_repo/$imageName:$imageVersion  $google_repo/$imageName-amd64:$imageVersion
docker rmi $aliyun_repo/$imageName:$imageVersion  
