# Makefile

all: logrot

logrot: bin/logrot
bin/logrot: bin src logrot.go cmd/main.go
	GOPATH=${PWD} go build -o $@ cmd/main.go


bin:
	@[ -d $@ ] || mkdir -p $@

clean:
	rm -rf bin
	rm -f src logrot

src:
	ln -sf . src
	ln -sf . logrot

# EOF
