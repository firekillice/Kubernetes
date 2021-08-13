#!/bin/bash

start() {
    kubectl create -f ./mongo/mongo-svc.yaml
    kubectl create -f ./mongo/mongo-statefulset.yaml

    kubectl create -f ./redis/redis-pv.yaml
    kubectl create -f ./redis/redis-pvc.yaml
    kubectl create -f ./redis/redis-svc.yaml
    kubectl create -f ./redis/redis-deployment-7478.yaml

    kubectl create -f ./game/nginx-svc.yaml
    kubectl create -f ./game/nginx-php-deployment.yaml
}

stop() {
    #kubectl delete -f ./mongo/mongo-svc.yaml
    kubectl delete -f ./mongo/mongo-statefulset.yaml

    #kubectl delete -f ./redis/redis-pv.yaml
    #kubectl delete -f ./redis/redis-pvc.yaml
    #kubectl delete -f ./redis/redis-svc.yaml
    kubectl delete -f ./redis/redis-deployment-7478.yaml

    #kubectl delete -f ./game/nginx-svc.yaml
    kubectl delete -f ./game/nginx-php-deployment.yaml
}

status() {
    echo 'to be continue'
}

reload() {
    echo 'to be continue'
}

restart() {
    echo 'to be continue'
}
handle(){
    case $1 in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        status
        ;;
    reload)
        reload
        ;;
    restart)
        restart
        ;;
    *)
        echo 'USAGE OF THIS SERVER IS '${0} 'status|start|stop|reload|restart';
        ;;
    esac
}


if [ $# -le 2 ]
then
    handle $1
else
    echo 'USAGE OF THIS SERVER IS '${0} 'status|start|stop|restart';
fi