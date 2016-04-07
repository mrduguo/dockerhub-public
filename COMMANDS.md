## java8 with essential tools


### Build Commands


```bash

docker build -t mrduguo/public:javadev-latest .

docker push mrduguo/public:javadev-latest

```


### Consume Commands


```bash

docker pull mrduguo/public:javadev-latest

docker run --rm mrduguo/public:javadev-latest java -version

docker run -it --rm mrduguo/public:javadev-latest bash

docker run -it --rm --name javadev -v /var/run/docker.sock:/var/run/docker.sock -v ~:/root mrduguo/public:javadev-latest bash

docker exec -it javadev bash

```