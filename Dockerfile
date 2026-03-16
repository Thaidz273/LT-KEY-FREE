FROM php:8.2-apache

COPY . /var/www/html/

RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf
RUN sed -i 's/:80/:8080/g' /etc/apache2/sites-enabled/000-default.conf

EXPOSE 8080

CMD ["apache2-foreground"]
