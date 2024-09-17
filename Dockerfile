FROM golang:1.21.3-alpine3.18

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]