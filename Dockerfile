FROM csighub.tencentyun.com/medipedia/medi-go:1.2.mini

WORKDIR /project

# CGO_ENABLED=0 go build -o grpcox grpcox.go 
COPY ./grpcox ./grpcox
COPY ./index ./index
RUN mkdir ./log
EXPOSE 8080
ENTRYPOINT ["./grpcox"]
