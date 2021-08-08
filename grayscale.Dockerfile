FROM alpine:latest

RUN apk add --no-cache ghostscript

ARG USER_ID
ARG GROUP_ID

RUN addgroup -S grayscale -g $GROUP_ID \
    && adduser -S -s /bin/false -G grayscale -u $USER_ID grayscale

USER grayscale
WORKDIR /usr/src/myapp