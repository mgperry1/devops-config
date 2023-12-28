kubectl --kubeconfig=/etc/rancher/k3s/k3s.yaml rollout restart deployment/config-drift -v=2 -n cp-linux-tower
sleep 60
kubectl --kubeconfig=/etc/rancher/k3s/k3s.yaml get all -n cp-linux-tower