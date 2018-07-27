FROM ubuntu:14.04

MAINTAINER Ferdie Culibao

VOLUME ["/var/www"]



RUN apt-get update && \
    apt-get install -y \
      locales \
      apache2 \
      php5 \
      php5-cli \
      libapache2-mod-php5 \
      php5-gd \
      php5-json \
      php5-ldap \
      php5-mysql \
      php5-pgsql

#COPY site_default /etc/apache2/sites-available/000-default.conf

#COPY run /usr/local/bin/run

#RUN chmod +x /usr/local/bin/run

RUN a2enmod rewrite



EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]
