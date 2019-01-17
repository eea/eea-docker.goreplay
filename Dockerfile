

FROM google/golang:1.4

#:wRUN apt-get -y update && \
RUN    apt-get -y install git

WORKDIR /opt

COPY gor_0.16.1_x64.tar.gz /opt/gor_0.16.1_x64.tar.gz

RUN tar xfvz /opt/gor_0.16.1_x64.tar.gz
 

#RUN cd /opt/goreplay/ && GOOS=linux GOARCH=386 ./make.bash --no-clean

#WORKDIR /gopath/src/github.com/buger/gor/

#ADD . /gopath/src/github.com/buger/gor/

#RUN go get -u github.com/golang/lint/golint
#RUN go get
