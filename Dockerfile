FROM redhat/ubi8:latest

RUN yum update -y && dnf install -y postgresql
