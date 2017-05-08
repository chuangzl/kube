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
1. 下载 docker-engine-1.12.6-1.el7.centos.x86_64.rpm https://pan.baidu.com/s/1c2rdLtQ
    下载后与init.sh 文件放在同一个目录下
    
2. 下载 kubernetes_rpm v1.6.1.zip   https://pan.baidu.com/s/1cgY5sE
    下载解压后，将其中定rpm 文件与init.sh 文件放在同一个目录下

3. 下载 go1.8.1.linux-amd64.tar.gz  https://pan.baidu.com/s/1bA42aM
    下载后与init.sh 文件放在同一个目录下

见 other folder / init.sh  install_kube.sh

## dashboard 

docker pull registry.cn-qingdao.aliyuncs.com/chuangzl/kubernetes-dashboard:v1.6.0

download kubernetes-dashboard.yaml from other folder

kubectl create -f ./kubernetes-dashboard.yaml

kubectl proxy --address='0.0.0.0' --port=30099 --accept-hosts='^*$'

open browser: http://<master address>:30099/ui
