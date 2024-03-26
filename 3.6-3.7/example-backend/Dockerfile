FROM golang:1.22.1-alpine3.19

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build && \
    rm -rf /var/lib/apt/lists/* && \
    addgroup -S appgroup && adduser -S appuser -G appgroup

USER appuser

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["./server"]
