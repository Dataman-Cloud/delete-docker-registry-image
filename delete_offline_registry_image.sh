#!/bin/bash
# Delete offline registry images
# Author: jyliu
base_dir=$(cd `dirname $0` && pwd)
cd $base_dir
export REGISTRY_DATA_DIR=/data/offline-openshift-origin/offline-registry_data/docker/registry/v2

imagename=$1

if [ -z "$imagename" ];then
	echo "Usage: $0 <imagename>"
	exit 1
fi
./delete_docker_registry_image.py --image $1
