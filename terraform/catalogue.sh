#!/bin/bash
APP_VERSION=$1
ENVIRONMENT=$2
echo "app version: $APP_VERSION"

# Use system package manager instead of pip
dnf install ansible -y

# Run ansible-pull
cd /tmp
ansible-pull -U https://github.com/rakesh6658/ansible-roboshop-roles-2025-tf.git \
  -e component=catalogue \
  -e app_version=$APP_VERSION \
  -e env=$ENVIRONMENT \
  main.yaml
