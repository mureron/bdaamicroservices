#!/bin/bash
DOCKER_TAG="rmuresano/bdaassparkmaster:0_0_4"
PACKAGE_REPO="../../runtimes/packages"
source $PACKAGE_REPO/FileVersions.sh

if [ -d packages ]; then
    rm -rf packages
fi

mkdir -p packages
cp startup-config.sh packages/startup-config.sh

docker build  -t $DOCKER_TAG .

rm -rf packages