FROM nginx
MAINTAINER Manas
expose 80
COPY index.html /usr/share/nginx/html/index.html

