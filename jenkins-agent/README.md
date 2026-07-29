docker tag jenkins-agent-devops brigghinacr.azurecr.io/jenkins-agent-devops:v1

docker push brigghinacr.azurecr.io/jenkins-agent-devops:v1

az acr repository show-tags `
    --name brigghinwebsiteacr `
    --repository jenkins-agent-devops


helm get values jenkins -n jenkins