From nginx
LABEL name = "font"
LABEL version ="1.0"
COPY ./dist /usr/share/nginx/
COPY ./font.conf  /etc/nginx/conf.d
EXPOSE 80
