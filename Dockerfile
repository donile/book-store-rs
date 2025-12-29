ARG APP_NAME=book-store-api

FROM rust:1.92.0-alpine3.23 AS builder

ARG APP_NAME
ENV APP_NAME=$APP_NAME

WORKDIR /usr/src/${APP_NAME}
COPY . .

RUN cargo install --path .

CMD sh -c "${APP_NAME}"
