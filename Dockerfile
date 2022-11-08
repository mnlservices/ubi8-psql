FROM redhat/ubi8:latest

RUN yum update -y && yum install -y git 
RUN curl -L https://mirror.openshift.com/pub/openshift-v4/clients/helm/latest/helm-linux-amd64 -o /usr/local/bin/helm && chmod +x /usr/local/bin/helm 
RUN helm plugin install https://github.com/chartmuseum/helm-push
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && install -m 0755 kubectl /usr/local/bin/kubectl
