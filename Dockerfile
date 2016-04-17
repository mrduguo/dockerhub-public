FROM mrduguo/public:java8-latest
RUN curl -O http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz && \
    tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && \
    ln -s /usr/local/apache-maven-3.2.5/bin/mvn /usr/local/bin/mvn && \
    rm -f apache-maven-3.2.5-bin.tar.gz

RUN curl -O https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok-stable-linux-amd64.zip && \
    mv ngrok /usr/local/bin/ngrok && \
    rm -f ngrok-stable-linux-amd64.zip && \
    curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod a+x /usr/local/bin/docker-compose
    
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.30.2/install.sh | bash && \
    . ~/.nvm/nvm.sh && \
    nvm install latest

RUN apt-get purge docker.io* && \
    apt-get update && \
    apt-get install -y apt-transport-https ca-certificates dos2unix && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    echo "deb https://apt.dockerproject.org/repo debian-jessie main" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y docker-engine

#    docker build -t mrduguo/public:javadev-latest .
