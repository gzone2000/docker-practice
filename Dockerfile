FROM ubuntu:18.04
LABEL docker testing 2019.11.8

# Avoding user interaction with tzdata
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2  # Install Apache Web Server
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # For installing PHP 5.6
RUN apt-get update
RUN apt-get install -y php5.6

# Connect PHP & MySQL
RUN apt-get install -y php5.6-mysql

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
