#!/bin/bash

kubectl delete configmap --all

kubectl create configmap conf-conf-d-rock-mongo-conf --from-file ./nginx/conf/conf.d/rock-mongo.conf
kubectl create configmap conf-conf-d-game-conf --from-file ./nginx/conf/conf.d/game.conf
kubectl create configmap conf-conf-d-manage-conf --from-file ./nginx/conf/conf.d/manage.conf
kubectl create configmap conf-conf-d-upstream-php-conf --from-file ./nginx/conf/conf.d/upstream_php-fpm.conf

kubectl create configmap conf-server-conf --from-file ./nginx/conf/server.conf
kubectl create configmap conf-conf-conf --from-file ./nginx/conf/conf.conf
kubectl create configmap conf-fcgi-conf --from-file ./nginx/conf/fcgi.conf

kubectl create configmap redis-conf --from-file ./redis/redis.conf


kubectl apply -f ./mongo/mongo-cm.yaml

kubectl get configmap
