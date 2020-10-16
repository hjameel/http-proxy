build:
	@docker build -t http-proxy-acceptance-tests -f tests.Dockerfile .
.PHONY: build

test-acceptance: build
	@docker-compose run acceptance-tests
.PHONY: test-acceptance
