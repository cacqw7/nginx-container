# nginx as a frontend for a Rails application
FROM nginx

ADD nginx.conf /etc/nginx/nginx.conf
ADD default /etc/nginx/default.site

EXPOSE 80
EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
