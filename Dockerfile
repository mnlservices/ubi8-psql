FROM redhat/ubi8:latest

RUN yum update -y && yum install -y git 
RUN curl -L https://mirror.openshift.com/pub/openshift-v4/clients/helm/latest/helm-linux-amd64 -o /usr/local/bin/helm && chmod +x /usr/local/bin/helm 
RUN helm plugin install https://github.com/chartmuseum/helm-push

