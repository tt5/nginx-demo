FROM nginx:alpine

WORKDIR /proj

COPY . .

COPY ./nginx.conf /etc/nginx/nginx.conf
