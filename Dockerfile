#Lightweight base image
FROM alpine:latest

# /structure directory with 777 permissions
RUN mkdir -p /structure && chmod 777 /structure

#Required files with specific owners
RUN touch /structure/sync-work && chown sync /structure/sync-work
RUN touch /structure/nobody-work && chown nobody /structure/nobody-work

#'collin' user with UID 5000
RUN adduser -D -u 5000 collin

