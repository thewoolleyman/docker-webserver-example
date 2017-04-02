#!/usr/bin/env bash

DOCKER_NAMESPACE=thewoolleyman
DOCKER_REPO_NAME=docker-webserver-example
BUILD_NUMBER=${BUILDKITE_BUILD_NUMBER:-${BUILD_NUMBER}}
