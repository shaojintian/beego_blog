FROM golang

MAINTAINER shaojintian


#env
ENV GOPROXY https://goproxy.io

#dir
RUN mkdir -p /go/src/beego_blog_v1

WORKDIR /go/src/beego_blog_v1

#files
COPY ./*  /go/src/beego_blog_v1/

RUN go get -v github.com/astaxie/beego


RUN go build main.go




#docker build -t beego_blog_v1:v0.1 .

##blog
#docker run  -it  --name beego -p 8080:8080 beego_blog_v1:v0.1 /bin/bash

## mysql
#docker run  -dit  --name mysql  -p 3306:3306 -e MYSQL_ROOT_PASSWORD=6963038 mysql /bin/bash
