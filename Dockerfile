FROM powerdns/pdns-auth-49:4.9.3

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get -y install \
    procps \
    iproute2 \
    tshark \
    netcat \
    net-tools \
    bind9-dnsutils \
    knot-dnsutils \
    lsof

CMD ["sleep", "infinity"]
