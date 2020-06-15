.PHONY: lint test

all: lint test

lint:
	./tests/build.sh

test:
	cd tests; ./test.sh
