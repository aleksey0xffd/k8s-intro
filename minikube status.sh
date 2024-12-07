minikube status
minikube start

lvim pod.yaml
kubectl apply -f pod.yaml
kubectl get po
kubectl exec -it root-user bash
whoami
id

kubectl apply -f pod2.yaml
kubectl get po
kubectl exec -it root sh
whoami
id
ps
kubectl delete po root

kubectl apply -f pod3.yaml
kubectl get po
kubectl exec -it pod3 sh
whoami
id
ps
cd data
ls -l
cd demo
echo hello > testfile
^D

vim pod4.yaml
kubectl apply -f pod4.yaml
kubectl get po
kubectl exec -it pod4 sh
whoami
id

kubectl get psp
minikube start --extra-config=apiserver.GenericServerRunOptions.AdmissionControl=NamespaceLifecycle,LimitRanger,ServiceAccount,PersistentVolumeLabel,DefaultStorageClass,ResourceQuota,DefaultTolerationSeconds,PodSecurityPolicy
minikube start --extra-config=apiserver.enable-admission-plugins="Initializers,NamespaceLifecycle,LimitRanger,ServiceAccount,DefaultStorageClass,DefaultTolerationSeconds,NodeRestriction,MutatingAdmissionWebhook,ValidatingAdmissionWebhook,ResourceQuota,PodSecurityPolicy"