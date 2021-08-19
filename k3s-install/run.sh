/usr/local/bin/k3s-killall.sh 
/usr/local/bin/k3s-uninstall.sh
 
cp ./k3s /usr/local/bin/
chmod +x /usr/local/bin/k3s

yum update
yum install nfs-common

mkdir -p /var/lib/rancher/k3s/agent/images/
##次数需要一个镜像，但是github存储有100MB限制，不能上传
##下载地址：https://github.com/rancher/k3s/releases
cp ./k3s-airgap-images-amd64.tar.gz /var/lib/rancher/k3s/agent/images/

chmod +x ./install.sh
INSTALL_K3S_SKIP_DOWNLOAD=true INSTALL_K3S_EXEC="--tls-san 39.106.56.130"  ./install.sh --docker
