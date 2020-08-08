FROM i386/debian:10

RUN apt-get update && apt-get install -y kannel curl

COPY bearerbox.conf /etc/kannel

CMD [ "bearerbox", "-v", "1", "/etc/kannel/bearerbox.conf" ]