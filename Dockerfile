FROM i386/debian:10

RUN apt-get update && apt-get install -y kannel curl

COPY bearerbox.conf /etc/kannel

COPY start.sh /start.sh

CMD [ "/start.sh" ]