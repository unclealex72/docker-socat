FROM arm64v8/alpine:latest
MAINTAINER Alex Jones <alex.jones@unclealex.co.uk>

RUN apk update && apk add socat --no-cache
EXPOSE 4000
ENTRYPOINT ["socat","-v","tcp-l:4000,fork,keepalive,nodelay,forever,reuseaddr","/dev/ttyACM0,rawer,echo=0"]
