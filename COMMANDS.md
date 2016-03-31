## java8 with essential tools


### Build Commands


```bash

docker build -t mrduguo/public:java8-latest .

docker push mrduguo/public:java8-latest

```


### Consume Commands


```bash

docker pull mrduguo/public:java8-latest

docker run mrduguo/public:java8-latest java -version

docker run --rm -it mrduguo/public:java8-latest bash

```