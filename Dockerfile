FROM ubuntu:latest

ENV TZ=Erope/London
RUN ln -sf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get -y install apache2 php libapache2-mod-php php-mysql

COPY ./ /var/www/html

RUN a2enmod rewrite

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]