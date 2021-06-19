# udacity-project-capstone
Last project in Udacity Cloud Devops course to show what was learned
Project scope is to install an nginx server to a kubernetes cluster in AWS EKS. 
CircleCI is used to update the kubernetes deployment when this github repository is changed. 

## Steps to install
* Install the AWS EKS cluster with the following command: 

`eksctl create cluster --name prod --version 1.17 --region us-west-2 --nodegroup-name linux-nodes --node-type t2.small --nodes 3 --nodes-min 1 --nodes-max 4 --ssh-access --managed`

* Build the docker file to dockerhub

`run_docker.sh`

* Deploy the docker file to dockerhub

`upload_docker.sh <username> <password>`

* Deploy docker image to kubernetes

`run_kubernetes.sh <docker-username>`






