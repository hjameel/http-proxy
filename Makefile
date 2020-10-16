build:
	@docker build -t http-proxy-node -f Dockerfile .
.PHONY: build

build-tests:
	@docker build -t http-proxy-acceptance-tests -f tests.Dockerfile .
.PHONY: build-tests

test-acceptance: build build-tests
	@docker-compose down
	@docker-compose run acceptance-tests
.PHONY: test-acceptance
