FROM alpine:latest

RUN apk update && apk upgrade && \
    apk add --no-cache perl bash jq python3 nodejs nodejs-npm wget git && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache && \ 
    pip3 install --upgrade awscli && pip3 install --upgrade awsebcli


