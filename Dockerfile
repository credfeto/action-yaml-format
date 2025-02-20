FROM alpine:3.21.3

RUN apk --no-cache add grep=3.8-r1 moreutils=0.67-r0

COPY reformat /reformat

ENTRYPOINT ["/reformat"]
