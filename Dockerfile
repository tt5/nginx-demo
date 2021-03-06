FROM node:alpine AS build-stage

WORKDIR /app

COPY ./app /app

RUN npm i && npm run build

FROM nginx:alpine

COPY --from=build-stage /app/dist /usr/share/nginx/html
