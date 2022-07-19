FROM alpine:3.16.1

RUN apk --no-cache add grep moreutils

COPY reformat /reformat

ENTRYPOINT ["/reformat"]
