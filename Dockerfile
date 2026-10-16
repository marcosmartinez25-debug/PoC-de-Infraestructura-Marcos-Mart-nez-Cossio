FROM nginx:1.27-alpine

COPY conf/default.conf /etc/nginx/conf.d/default.conf
COPY html/ /usr/share/nginx/html/

RUN nginx -t
EXPOSE 80