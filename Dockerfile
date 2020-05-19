FROM alpine

ENV KUBE_LATEST_VERSION="v1.18.2"

RUN apk add --no-cache curl \
     && curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_LATEST_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
     && chmod +x /usr/local/bin/kubectl