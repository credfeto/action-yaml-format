FROM alpine:3.17.0

RUN apk --no-cache add grep moreutils

COPY reformat /reformat

ENTRYPOINT ["/reformat"]
