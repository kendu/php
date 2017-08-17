TAGS=cli fpm-dev fpm
.PHONY: $(TAGS)
all: $(TAGS)

DOCKER=docker

$(TAGS):
	$(DOCKER) build --rm --tag kendu/php:7.1-alpine-$@ $@/
