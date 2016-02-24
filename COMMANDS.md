## Basic Jenkins with essential plugins


### Build Commands


```bash

docker build -t mrduguo/public:jenkins-latest .

docker push mrduguo/public:jenkins-latest

```


### Consume Commands


```bash

docker pull mrduguo/public:jenkins-latest
docker pull mrduguo/public@sha256:4723ee1911c1b19e09ded9b43d3bf894bafdfe3eddf257213a05e356bf2b9b79

# local docker-machine
mkdir -p ~/docker-home/jenkins
docker run -it -p 6010:8080 -v ~/docker-home/jenkins/.ssh:/var/jenkins_home/.ssh -v ~/docker-home/jenkins/jobs:/var/jenkins_home/jobs --rm --name jenkins mrduguo/public:jenkins-latest
curl -v http://192.168.99.100:6010/job/sandbox-github/build -X POST

# Server
mkdir -p /var/jenkins_home
docker run -p 6010:8080 -v /var/jenkins_home:/var/jenkins_home --rm --name jenkins mrduguo/public:jenkins-latest
curl -v http://localhost:6010/job/sandbox-github/build -X POST

```

### docker service installation


```bash

# EC2
yum -y install docker
chkconfig --level 345 docker on
service docker start

# Ubuntu
apt-get update
apt-get -y install docker.io
update-rc.d docker defaults
docker --version

```