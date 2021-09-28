# STAGE 1

FROM node:latest as builder

WORKDIR /app

COPY . .

RUN npm i && npm run ng build

# STAGE 2

FROM nginx:alpine

WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=builder /app/dist/docker-ng .

ENTRYPOINT ["nginx", "-g", "daemon off;"]
