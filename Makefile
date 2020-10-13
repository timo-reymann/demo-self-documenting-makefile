SHELL := /bin/bash
.PHONY: help

help: ## Display this help page
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[33m%-30s\033[0m %s\n", $$1, $$2}'

say-hello: ## Be kind and say hello to the world
	@echo "Hello world, its me your Makefile!"

build: ## Build it
	@echo "peep poop, building stuff!"

undocumented:
	@echo "I wont appear in help"

