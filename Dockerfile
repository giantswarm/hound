FROM alpine

ENV GOPATH /go

COPY . /go/src/github.com/giantswarm/hound

RUN apk update \
	&& apk add go git subversion libc-dev mercurial bzr openssh \
	&& go install github.com/giantswarm/cmds/houndd \
	&& apk del go \
	&& rm -f /var/cache/apk/* \
	&& rm -rf /go/src /go/pkg

EXPOSE 6080
ENTRYPOINT ["/go/bin/houndd", "-conf", "/data/config.json"]
