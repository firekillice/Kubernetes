cp ./k3s /usr/local/bin/
chmod +x /usr/loca/bin/k3s

sudo yum update;
sudo yum install nfs-common

mkdir -p /var/lib/rancher/k3s/agent/images/
##次数需要一个镜像，但是github存储有100MB限制，不能上传
cp ./k3s-airgap-images-amd64.tar.gz /var/lib/rancher/k3s/agent/images/

chmod +x ./install.sh
INSTALL_K3S_SKIP_DOWNLOAD=true ./install.sh
