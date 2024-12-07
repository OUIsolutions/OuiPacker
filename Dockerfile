
FROM alpine:latest
RUN echo "nameserver 8.8.8.8" > /etc/resolv.conf


RUN apk add --no-cache gcc musl-dev
RUN apk add git
RUN apk add curl
RUN gcc --version


# Copie os scripts necessários
COPY darwinconf.lua .

COPY install_dependencies.sh .
RUN chmod +x install_dependencies.sh
RUN sh install_dependencies.sh

