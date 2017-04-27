# kubernetes v1.6.0 构建
由于不能从google container上直接pull镜像，所以这边保存镜像的dockerfile，build 交由阿里云来操作。(感谢sails的大力之作）

##	kube 1.6.0 需要的镜像:
```
gcr.io/google_containers/kube-apiserver-amd64	v1.6.0
gcr.io/google_containers/kube-controller-manager-amd64	v1.6.0
gcr.io/google_containers/kube-scheduler-amd64	v1.6.0
gcr.io/google_containers/kube-proxy-amd64	v1.6.0
gcr.io/google_containers/etcd-amd64	3.0.17
gcr.io/google_containers/pause-amd64	3.0
gcr.io/google_containers/k8s-dns-sidecar-amd64	1.14.1
gcr.io/google_containers/k8s-dns-kube-dns-amd64	1.14.1
gcr.io/google_containers/k8s-dns-dnsmasq-nanny-amd64	1.14.1



## 通过kubeadm安装

见 other folder / init.sh  install_kube.sh
