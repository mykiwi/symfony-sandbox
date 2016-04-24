FIG = docker-compose

all: stop start ## clean and start docker container

build: ## builder docker image
	$(FIG) build

start: ## start docker container
	$(FIG) up -d

stop: ## stop and remove docker container
	$(FIG) kill
	$(FIG) rm --all -fv

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
