################################################################################################################
# $1 阿里云对应的仓库名
# $2 阿里云中对应的版本号
################################################################################################################


REP=$1
VER=$2

REP_CLOUD=registry.cn-hangzhou.aliyuncs.com/sandstone/$REP:$VER
docker build -t php-k3s:1.0.0 .

docker login --username=wang70bin@163.com  --password=123qweasd registry.cn-hangzhou.aliyuncs.com

docker tag php-k3s:1.0.0 $REP_CLOUD

docker push $REP_CLOUD
