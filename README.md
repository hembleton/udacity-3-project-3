# Microservices at scale using Kubernetes & AWS

For this project, you are a DevOps engineer who will be collaborating with a team that is building an API for business analysts. The API provides business analysts basic analytics data on user activity in the service. The application they provide you functions as expected locally and you are expected to help build a pipeline to deploy it in Kubernetes.

## Getting Started

### Dependencies
#### Local Environment
1. Python Environment - run Python 3.6+ applications and install Python dependencies via `pip`
2. Docker CLI - build and run Docker images locally
3. `kubectl` - run commands against a Kubernetes cluster
4. `helm` - apply Helm Charts to a Kubernetes cluster

#### Remote Resources
1. AWS CodeBuild - build Docker images remotely
2. AWS ECR - host Docker images
3. Kubernetes Environment with AWS EKS - run applications in k8s
4. AWS CloudWatch - monitor activity and logs in EKS
5. GitHub - pull and clone code

#### Kubernetes Resources Used
Deployment: Manages application instances.
Service: LoadBalancer for external access.
ConfigMap & Secrets: Stores environment variables securely.

#### 1. Depolyment Steps

## Build the image

docker build -t <aws_account_id>.dkr.ecr.<region>.amazonaws.com/coworking-checkin:latest .

## Push the image to AWS ECR

docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/coworking-checkin:latest

## Apply the Kubernetes config files

kubectl apply -f configmap.yaml
kubectl apply -f secret.yaml

## Deploy the application

kubectl apply -f coworking.yaml

## Verify the deployment

kubectl get pods

## Ensure to tear down any AWS resources that are not being used to avoid extra costs