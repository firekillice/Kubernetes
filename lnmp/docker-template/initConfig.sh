#!/bin/bash

kubectl delete configmap --all

kubectl create configmap nginx-conf-d-rock-mongo-conf --from-file ./nginx/conf.d/rock-mongo.conf
kubectl create configmap nginx-conf-d-game-conf --from-file ./nginx/conf.d/game.conf
kubectl create configmap nginx-conf-d-manage-conf --from-file ./nginx/conf.d/manage.conf
kubectl create configmap nginx-conf-d-upstream-php-conf --from-file ./nginx/conf.d/upstream_php-fpm.conf

kubectl create configmap nginx-server-conf --from-file ./nginx/server.conf
kubectl create configmap nginx-nginx-conf --from-file ./nginx/nginx.conf
kubectl create configmap nginx-fcgi-conf --from-file ./nginx/fcgi.conf

kubectl create configmap redis-conf --from-file ./redis/redis.conf


kubectl get configmap
