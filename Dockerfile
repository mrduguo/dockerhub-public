FROM mrduguo/public:java8-latest
RUN curl -O http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz && \
    tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && \
    ln -s /usr/local/apache-maven-3.2.5/bin/mvn /usr/local/bin/mvn && \
    rm -f apache-maven-3.2.5-bin.tar.gz