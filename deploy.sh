#!/bin/bash

# Update terraform vpc module
git submodule update

# deploy VPC
pushd terraform
./deploy_vpc.sh
popd

ansible-playbook -i hosts site.yml --ask-pass
