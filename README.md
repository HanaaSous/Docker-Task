# Docker-Task
## Apache server/client images using Docker
#### **from server side==> 
* download httpd from centos7
* create custum repo contains rpms for httpd
* run server on 8899
* create scripts file to build server-image and run docker container

#### **from client side ==> 
- request custum repo from server
- use this repo to download httpd
- create script file to build client-image and run a container>
      
#### ** create script to validate the download httpd rpm on client

## STEPS:
1) install docker at your machine and start it.(for instulation ==> https://docs.docker.com/engine/install/centos/)
- ##### To use HTTP, install the Apache web services package with the command
  - yum install -y yum-utils 
- #yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
- #yum-config-manager --enable docker-ce-nightly
- #yum-config-manager --enable docker-ce-test
- #yum install docker-ce docker-ce-cli containerd.io
- #systemctl start docker

2) create server directory with Dockerfile and scripts.sh files :
- #mkdir /server && cd /server
- #vi Dockerfile
- #vi server-scripts.sh
- #chmod +x server-scripts.sh
- #./server-scripts.sh                                                             

3)create client directory with Dockerfile and scripts.sh files : 
- #mkdir /client && cd /client
- #vi Dockerfile
- #vi client-scripts.sh
- #chmod +x client-scripts.sh
- #./client-scripts.sh  
4)create validation script : 
- #vi validation.sh
- #chmod +x validation.sh
- #./validation.sh
