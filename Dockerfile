FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y moreutils --no-install-recommends
RUN rm -rf /var/lib/apt/lists/*

COPY reformat /reformat

ENTRYPOINT ["/reformat"]
