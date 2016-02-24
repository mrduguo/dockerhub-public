FROM java:8
RUN apt-get update --fix-missing && \
    apt-get -y \
    install \
    telnet \
    net-tools \
    vim && \
    apt-get -y clean && \
    apt-get -q -y autoremove