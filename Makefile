##
## Base Commands
## -------------
SHELL := /usr/bin/env bash


.DEFAULT_GOAL := help
.PHONY: help
help: $(MAKEFILE_LIST)
	@sed -n 's/^##//p' $(MAKEFILE_LIST)

## install: react and vue clients
.PHONY: install
install:
	@echo set VITE_OPEN_API_KEY, VITE_ANTHROPIC_API_KEY GOOGLE_GENAI_API_KEY VITE_BRWOSERLESS_API_TOKEN 
	cd packages/grapys-vue && yarn install
	cd packages/grapys-react && yarn install

## run: run the vue client
PORT ?= 8087
.PHONY: run
run:
	export PORT=$(PORT) && cd packages/grapys-vue && yarn run dev
