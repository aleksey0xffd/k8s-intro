minikube start

cd ~/.kube
minikube delete
minikube start
kubectl get po
kubectl get ns
kubectl get po -n kube-system
kubectl get po -A

pod.yaml
kubectl apply -f pod.yaml
kubectl get po

## Статусы -> преза


## sidecar container
kubectl apply -f 2-second.yaml
kubectl get po
kubectl delete pod nginx

lvim 2pod.yaml
kubectl apply -f 2pod.yaml
lvim pod2.yaml
kubectl apply -f 2pod.yaml
kubectl get po --show-labels
kubectl get po -l app=nginx --show-labels
kubectl delete po -l env=prod
## Преза

## ReplicaSet
lvim replicaset.yaml
kubectl create -f replicaset.yaml
kubectl get replicaset
kubectl get po
kubectl scale replicaset nginx --replicas=10
kubectl get po
kubectl scale replicaset nginx --replicas=1
kubectl delete replicaset nginx

## Deployment
lvim deployment.yaml
kubectl apply -f deployment.yaml
kubectl get po
kubectl delete deployment nginx
## Преза

# Service
kubectl apply -f deployment2.yaml
kubectl get po
kubectl get po -o wide
kubectl expose deployment nginx-deployment --port 80 --target-port 80
kubectl get services
kubectl describe service nginx-deployment
kubectl get endpoints
kubectl run tmp --rm -i --tty --image nicolaka/netshoot -- /bin/bash
curl ip
## Преза
