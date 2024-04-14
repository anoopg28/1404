FROM ubuntu:latest
LABEL "Creator"="Anoop"
LABEL "Project"="Demo"
ENV DEBIAN_FOREGROUND=noninteractive
RUN apt update
RUN apt install -y git
RUN apt install apache2 -y
CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
EXPOSE 80
WORKDIR /var/www/html
VOLUME /var/log/apache2
ADD anoop.tar.gz /var/www/html
