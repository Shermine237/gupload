FROM alpine:3.19.1

RUN apk update && \
    apk upgrade && \
    apk add python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --no-cache --upgrade pip setuptools && \
    $ pip3 install --upgrade gupload
