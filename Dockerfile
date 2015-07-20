# Dockerfile for installing and running Nginx

# Select ubuntu as the base image
FROM ubuntu

# Install nginx
RUN apt-get update
RUN apt-get install -y nginx
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Add configuration files in repository to filesystem
ADD config/container/nginx-sites.conf /etc/nginx/sites-enabled/default

# Publish port 80
EXPOSE 80

# Start nginx when container starts
ENTRYPOINT /usr/sbin/nginx
