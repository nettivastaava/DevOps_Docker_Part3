FROM node:16.3.0-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && npm run build  && \
    rm -rf /var/lib/apt/lists/*

FROM node:16.3.0-alpine

EXPOSE 5000

WORKDIR /app

COPY --from=build-stage /usr/src/app/build /app/build

RUN npm install -g serve && \
    adduser -D appuser 

USER appuser

CMD ["serve", "-s", "-l", "5000", "build"]
