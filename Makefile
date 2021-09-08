# Let us change some default values prior including the Makefile

PROJECT_NAME=example

DOCKER_CC=gcc
DOCKER_CXX=g++

include build_tools/Makefile

# User-defined target
.PHONY: example-target
example-target: ## Example
	@echo "This is an example target"
