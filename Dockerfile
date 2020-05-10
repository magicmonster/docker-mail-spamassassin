FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install -y spamassassin

# install debugging utils
RUN DEBIAN_FRONTEND=noninteractive  apt-get install -y vim netcat net-tools less dnsutils

CMD ["spamd", "--listen", "0.0.0.0:783"]
