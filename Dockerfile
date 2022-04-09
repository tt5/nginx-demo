FROM node:alpine as build-stage

WORKDIR /app

COPY ./app /app

RUN npm i && npx vite build


FROM nginx:alpine

COPY --from=build-stage /app/dist /usr/share/nginx/html
