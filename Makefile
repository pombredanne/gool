# This is how we want to name the binary output
BINARY=gool

# These are the values we want to pass for Version and BuildTime
VERSION=0.9.1

# Setup the -ldflags option for go build here, interpolate the variable values
LDFLAGS=-ldflags "-X github.com/mipimipi/gool/internal/cli.Version=${VERSION} -X github.com/mipimipi/gool/internal/cli.Build=`git rev-parse HEAD`"

all:
	go build ${LDFLAGS} -o ${GOPATH}/bin/${BINARY} cmd/main.go
