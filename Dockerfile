FROM golang:1.7-alpine
LABEL maintainer="Remco Verhoef <remco@dutchcoders.io>"

# Copy the local package files to the container's workspace.
ADD .

# build & install server
RUN go build -o transfersh

ENTRYPOINT ["transfersh", "--provider", "local", "--basedir", "/tmp/"]

CMD
