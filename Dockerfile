FROM java:8
RUN apt-get update --fix-missing && \
    apt-get -y \
    install \
    telnet \
    net-tools \
    less \
    vim && \
    apt-get -y clean && \
    apt-get -q -y autoremove