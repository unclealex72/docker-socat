FROM arm32v6/alpine:latest
MAINTAINER Alex Jones <alex.jones@unclealex.co.uk>

COPY cmd.sh .
RUN apk update && apk add socat --no-cache
EXPOSE 4000
ENTRYPOINT ["./cmd.sh"]
