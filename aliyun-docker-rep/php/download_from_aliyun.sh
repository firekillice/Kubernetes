################################################################################################################
# $1 阿里云对应的仓库名
# $2 阿里云中对应的版本号
################################################################################################################


REP=$1
VER=$2

REP_CLOUD=registry.cn-hangzhou.aliyuncs.com/sandstone/$REP:$VER

docker login --username=wang70bin@163.com --password=123qweasd registry.cn-hangzhou.aliyuncs.com

docker pull $REP_CLOUD
