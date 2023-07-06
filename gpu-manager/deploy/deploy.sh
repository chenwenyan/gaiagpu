kubectl create sa gpu-manager -n kube-system
kubectl create clusterrolebinding gpu-manager-role --clusterrole=cluster-admin --serviceaccount=kube-system:gpu-manager

kubectl delete -f nvidia-device-plugin.yaml
kubectl delete -f gpu-manager.yaml
kubectl delete -f gpu-manager-svc.yaml

kubectl apply -f nvidia-device-plugin.yaml
kubectl apply -f gpu-manager.yaml
kubectl apply -f gpu-manager-svc.yaml
