FROM ubuntu:latest
LABEL maintainer="Roman Voitovych"
RUN apt-get update && apt-get upgrade && apt-get install -y apache2
VOLUME /var/www/html
COPY index.html /var/www/html
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]