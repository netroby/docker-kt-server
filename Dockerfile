FROM alpine
RUN apk update ; \
        apk add git go;\
        export GOPATH=/opt/go; \
        go get -u -v github.com/xtaci/kcptun/server; \
        mv /opt/go/bin/server /bin/server;\
        apk del openssl ca-certificates libssh2 curl expat pcre git go;\
        rm -rf /opt/go ;\
        rm -rf /usr/lib/go;

CMD ["server"]
