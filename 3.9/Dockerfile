FROM golang:1.22.1-alpine3.19 as build-stage

WORKDIR /usr/src/app

COPY . .

RUN go build && \
    rm -rf /var/lib/apt/lists/* && \
    echo 'appgroup:x:1000:' > /etc/group && \
    echo 'appuser:x:1000:1000::/:' > /etc/passwd

FROM scratch

WORKDIR /app

COPY --from=build-stage /usr/src/app/server /app
COPY --from=build-stage /etc/group /etc/group
COPY --from=build-stage /etc/passwd /etc/passwd

EXPOSE 8080

ENV REQUEST_ORIGIN=http://localhost:5000

CMD ["./server"]
