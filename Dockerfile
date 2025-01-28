FROM powerdns/pdns-auth-49:4.9.3

ENV DEBIAN_FRONTEND=noninteractive
USER root
RUN apt-get update && apt-get -y install \
    procps \
    iproute2 \
    tshark \
    tcpdump \
    netcat \
    net-tools \
    bind9-dnsutils \
    knot-dnsutils \
    socat \
    lsof && \  
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT []
CMD ["sleep", "infinity"]
