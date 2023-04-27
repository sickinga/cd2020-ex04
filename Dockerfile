FROM golang:1.11-alpine

LABEL maintainer='s2210455004@fhooe.at'

WORKDIR /src

COPY *.go go.* ./

RUN apk update && \
    apk add git && \
    apk add build-base 
RUN ls
RUN go build -o /usr/myapp

EXPOSE 8888

CMD ["/usr/myapp"]
