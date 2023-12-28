cd /app/ci-cd/config-drift
chmod -R +x *
#Only need login if its first time running or the login token is expired
#az login
az account set --subscription gsk-corp-applications-devtest
az acr build --image config-drift --registry sitdevtest --file Dockerfile.k8s .
