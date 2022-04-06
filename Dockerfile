FROM node:alpine

WORKDIR /app

COPY ./app /app

RUN npm i vite && vite build


FROM nginx:alpine

COPY --from=stage0 /app/dist /usr/share/nginx/html
