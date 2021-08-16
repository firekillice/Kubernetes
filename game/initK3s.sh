#!/bin/bash

kubectl delete configmap --all

kubectl create configmap nginx-conf-d-rock-mongo-conf --from-file ./nginx/conf/conf.d/rock-mongo.conf
kubectl create configmap nginx-conf-d-game-conf --from-file ./nginx/conf/conf.d/game.conf
kubectl create configmap nginx-conf-d-manage-conf --from-file ./nginx/conf/conf.d/manage.conf
kubectl create configmap nginx-conf-d-upstream-php-conf --from-file ./nginx/conf/conf.d/upstream_php-fpm.conf

kubectl create configmap nginx-server-conf --from-file ./nginx/conf/server.conf
kubectl create configmap nginx-nginx-conf --from-file ./nginx/conf/nginx.conf
kubectl create configmap nginx-fcgi-conf --from-file ./nginx/conf/fcgi.conf

kubectl create configmap redis-conf --from-file ./redis/redis.conf

kubectl create configmap mongodb-setup-script --from-file ./mongo/setup.sh

kubectl apply -f ./mongo/mongo-cm.yaml

kubectl create configmap game-account-server-conf --from-file ./server/config/AccountServer.php
kubectl create configmap game-all-server-list-conf --from-file ./server/config/AllServerList.php
kubectl create configmap game-app-config-conf --from-file ./server/config/AppConfig.php
kubectl create configmap game-auth-conf --from-file ./server/config/Auth.php
kubectl create configmap game-cross-server-list-conf --from-file ./server/config/CrossServerList.php
kubectl create configmap game-etcd-conf --from-file ./server/config/EtcdConfig.php
kubectl create configmap game-go-server-conf --from-file ./server/config/GoServer.php
kubectl create configmap game-log-server-conf --from-file ./server/config/LogServer.php
kubectl create configmap game-match-server-conf --from-file ./server/config/MatchServer.php
kubectl create configmap game-nsq-conf --from-file ./server/config/Nsq.php
kubectl create configmap game-open-server-conf --from-file ./server/config/OpenServer.php
kubectl create configmap game-platform-conf --from-file ./server/config/Platform.php
kubectl create configmap game-publication-conf --from-file ./server/config/Publication.php
kubectl create configmap game-redis-conf --from-file ./server/config/Redis.php
kubectl create configmap game-server-host-conf --from-file ./server/config/ServerHost.php
kubectl create configmap game-server-list-conf --from-file ./server/config/ServerList.php
kubectl create configmap game-server-conf --from-file ./server/config/Server.php
kubectl create configmap game-super-conductor-conf --from-file ./server/config/Superconductors.php
kubectl create configmap game-tim-rest-conf --from-file ./server/config/TimRestConfig.php



kubectl get configmap
