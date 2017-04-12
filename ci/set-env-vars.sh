#!/usr/bin/env bash

BUILD_NUMBER=${BUILDKITE_BUILD_NUMBER:-${BUILD_NUMBER}}
DOCKER_NAMESPACE=thewoolleyman
DOCKER_REPO_NAME=docker-webserver-example
DOCKER_SEMVER_MAJOR_MINOR_PATCH_VERSION=0.0.1

# Rancher
COMPOSE_PROJECT_NAME=example-stack # Stack Name
RANCHER_ENV=default
COMPOSE_FILE=rancher/$RANCHER_ENV/$COMPOSE_PROJECT_NAME/docker-compose.yml
RANCHER_COMPOSE_VERSION=0.12.4
RANCHER_LB_NAME=example-load-balancer
RANCHER_URL=http://rancher.illumin8.us:8080


# Secrets for local testing
if [ -e ~/.rancher/${RANCHER_ENV}/api-keys ]; then
  source ~/.rancher/${RANCHER_ENV}/api-keys
fi
