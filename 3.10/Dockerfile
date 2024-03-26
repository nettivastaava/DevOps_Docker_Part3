FROM node:16-alpine as build-stage

WORKDIR /app

COPY . .

RUN npm install

FROM alpine

WORKDIR /app

COPY --from=build-stage /app .

RUN apk --no-cache add nodejs && \
    adduser -D appuser

CMD node index.js
