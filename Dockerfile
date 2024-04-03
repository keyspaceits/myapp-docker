FROM ubuntu:latest
RUN apt update
RUN apt -y install apache2
COPY . /var/www/html/
WORKDIR /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
