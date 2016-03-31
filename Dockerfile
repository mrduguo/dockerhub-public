FROM java:8
RUN apt-get update --fix-missing && \
    apt-get -y \
    install \
    telnet \
    net-tools \
    net-tools \
    vim && \
    apt-get -y clean && \
    apt-get -q -y autoremove
RUN curl -O http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz && \
    tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && \
    ln -s /usr/local/apache-maven-3.2.5/bin/mvn /usr/local/bin/mvn && \
    rm -f apache-maven-3.2.5-bin.tar.gz