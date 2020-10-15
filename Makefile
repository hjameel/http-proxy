build:
	@sudo docker build -t http-proxy-acceptance-tests -f tests.Dockerfile .
.PHONY: build

test-acceptance: build
	@sudo docker-compose run acceptance-tests
.PHONY: test-acceptance
