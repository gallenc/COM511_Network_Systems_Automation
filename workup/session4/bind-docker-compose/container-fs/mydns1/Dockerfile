FROM ubuntu:22.04
RUN apt update -y
RUN apt install apache2 -y
RUN apt install systemctl -y
RUN apt install bind9 bind9utils dnsutils -y
RUN apt install net-tools nano iputils-ping -y
WORKDIR /etc

## keeps container running
ENTRYPOINT ["tail"]
CMD ["-f","/dev/null"]