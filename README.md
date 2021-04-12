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
1) ### install docker at your machine and start it.(for instulation ==> https://docs.docker.com/engine/install/centos/)
   - ##### SET UP THE REPOSITORY ==> Install the yum-utils package (which provides the yum-config-manager utility) and set up the stable repository
     - yum install -y yum-utils 
     - #yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
   - ##### Enable the repository
     - #yum-config-manager --enable docker-ce-nightly
     - #yum-config-manager --enable docker-ce-test
   - ##### Install docker engine
     - #yum install docker-ce docker-ce-cli containerd.io
   - ##### Start Docker
     - #systemctl start docker

2) ### create server directory with Dockerfile and scripts.sh files :
   - ##### create a directory named server and enter it
     - #mkdir /server && cd /server
   - ##### create Dockerfile which will use to build server-image
     - #vi Dockerfile
   - ##### create server-scripts.sh file which contains commands to build server-image and run a container from it
     - #vi server-scripts.sh
   - ##### make server-script.sh file executable 
     - #chmod +x server-scripts.sh
   - ##### execute server-script.sh file
     - #./server-scripts.sh      

                                                      
3) ### create client directory with Dockerfile and scripts.sh files :
   - ##### create a directory named client and enter it
     - #mkdir /server && cd /server
   - ##### create Dockerfile which will use to build client-image
     - #vi Dockerfile
   - ##### create client-scripts.sh file which contains commands to build client-image and run a container from it
     - #vi client-scripts.sh
   - ##### make client-script.sh file executable 
     - #chmod +x client-scripts.sh
   - ##### execute client-script.sh file
     - #./client-script.sh
 
4) ### create validation script : 
   after running ./client-script.sh you will be moved to client-container bash
   - ##### create validation file to check if httpd server is installed at client-container or not by using followed commands :
     - #vi validation.sh
     - #chmod +x validation.sh
     - #./validation.sh
