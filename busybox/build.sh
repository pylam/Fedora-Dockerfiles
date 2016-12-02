#!/bin/sh

./makeimage.sh mybusybox
docker tag mybusybox docker.io/pylam/fedora:mybusybox
docker push docker.io/pylam/fedora:mybusybox
