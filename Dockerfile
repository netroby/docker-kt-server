FROM golang:1.7

RUN go get -u -v github.com/xtaci/kcptun/client

CMD ["client"]