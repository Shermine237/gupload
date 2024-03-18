FROM alpine:3.19.1

RUN apk update && \
    apk upgrade && \
    apk add python3 python3-dev py3-venv build-base

RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

RUN pip install --no-cache-dir --upgrade pip setuptools && \
    pip install --no-cache-dir --upgrade gupload
