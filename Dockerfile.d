FROM ubuntu:22.04

RUN apt update
RUN apt install -y nginx
RUN apt install -y git
RUN apt install -y cron

COPY . /var/www/html/
COPY blog-pull-cronjob /etc/cron.d

RUN crontab /etc/cron.d/blog-pull-cronjob
RUN chmod +x /var/www/html/start.sh

CMD /var/www/html/start.sh;
