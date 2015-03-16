#!/bin/bash

docker build -t cloudlauncher/discovery-etcd-nginx-proxy . \
  && docker push cloudlauncher/discovery-etcd-nginx-proxy