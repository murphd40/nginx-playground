FROM nginx

WORKDIR /nginx

COPY data /data
COPY conf.d /etc/nginx/conf.d

EXPOSE 80 8080
