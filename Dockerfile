FROM alpine:3.14.3

RUN apk --no-cache add grep moreutils

COPY reformat /reformat

ENTRYPOINT ["/reformat"]
