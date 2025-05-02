VERSION ?= $(shell git rev-parse --short HEAD)$(and $(shell git status -s),-dirty-$(shell id -u -n))
BUILD_TIME := $(shell date -u +%FT%TZ)
TAG ?= stellar/freighter-protocol-icons:$(VERSION)

# Check if we need to prepend docker commands with sudo
SUDO := $(shell docker version >/dev/null 2>&1 || echo "sudo")

docker-build-tag: ## Build docker image and tag it
	$(SUDO) docker build --pull --label org.opencontainers.image.created="$(BUILD_TIME)" -t $(TAG) -f Dockerfile .

docker-push: ## Push tagged docker image
	$(SUDO) docker push $(TAG)
