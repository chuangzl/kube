#!/bin/bash

#
yum install -y  docker-engine-1.12.6-1.el7.centos.x86_64.rpm

systemctl start docker

systemctl enable docker

tar -zxf ./go1.8.1.linux-amd64.tar.gz -C /usr/local/

cat >> /etc/profile << EOF
export PATH=$PATH:/usr/local/go/bin
EOF

source /etc/profile
	
yum install -y ebtables socat

yum install -y kubelet-1.6.1-0.x86_64.rpm  kubernetes-cni-0.5.1-0.x86_64.rpm  kubectl-1.6.1-0.x86_64.rpm  kubeadm-1.6.1-0.x86_64.rpm

systemctl enable kubelet.service

. ./download_images.sh



