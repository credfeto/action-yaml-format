FROM apline:3.12.0

RUN apk add grep moreutils

COPY reformat /reformat

ENTRYPOINT ["/reformat"]
