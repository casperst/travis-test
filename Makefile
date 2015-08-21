build: dependencies
	go build

test: build
	go test -v ./...

package: test
	tar -cf build.tar hallo.go README.md

dependencies:
	go get -t -v -f -u

.PHONY: build test package dependencies
