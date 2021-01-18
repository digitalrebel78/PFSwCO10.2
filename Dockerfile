  
FROM ubuntu:latest
LABEL maintainer="Roman Voitovych, roman.voitovych@pollub.edu.pl"
RUN apt-get update && apt-get upgrade && apt-get install -y apache2
EXPOSE 80
VOLUME /var/www/html
COPY index.html /var/www/html
CMD ["apachectl", "-D", "FOREGROUND"]
