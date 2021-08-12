kubectl delete configmap --all

kubectl create configmap nginx-conf-d-rockmongo-conf --from-file ./conf.d/rock.conf
kubectl create configmap nginx-conf-d-game-conf --from-file ./conf.d/game.conf
kubectl create configmap nginx-conf-d-manager-conf --from-file ./conf.d/mgr.conf
kubectl create configmap nginx-conf-d-upstream-php-conf --from-file ./conf.d/upstream_php-fpm.conf

kubectl create configmap nginx-server-conf --from-file ./server.conf
kubectl create configmap nginx-nginx-conf --from-file ./nginx.conf
kubectl create configmap nginx-fcgi-conf --from-file ./fcgi.conf


kubectl get configmap
