FROM debian:buster
RUN apt-get upgrade && apt-get update && apt-get install mariadb-server ufw iptables -y
COPY ./run.sh /run.sh
RUN chmod +x /run.sh
CMD /run.sh