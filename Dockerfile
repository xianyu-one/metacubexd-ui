FROM node:alpine as builder

WORKDIR /build

RUN apk update && apk add git
RUN git clone https://github.com/MetaCubeX/metacubexd.git && mv metacubexd/* ./
RUN corepack enable
RUN corepack prepare pnpm@latest --activate
RUN pnpm install
RUN pnpm build

FROM httpd:alpine

EXPOSE 80

COPY --from=builder /build/dist/. /usr/local/apache2/htdocs/