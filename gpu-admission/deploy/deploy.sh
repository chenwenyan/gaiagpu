sudo rm /etc/kubernetes/manifests/gaiagpu-scheduler.yaml
kubectl delete -f gaiagpu-admission.yaml
sudo cp gaiagpu-scheduler.yaml /etc/kubernetes/manifests/
sudo cp gaiagpu-scheduler-config.yaml /etc/kubernetes/
kubectl create -f gaiagpu-admission.yaml
sudo systemctl restart kubelet