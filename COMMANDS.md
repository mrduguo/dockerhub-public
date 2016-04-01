## java8 with essential tools


### Build Commands


```bash

docker build -t mrduguo/public:javadev-latest .

docker push mrduguo/public:javadev-latest

```


### Consume Commands


```bash

docker pull mrduguo/public:javadev-latest

docker run mrduguo/public:javadev-latest java -version

docker run --rm -it -v ~:/root mrduguo/public:javadev-latest bash

```