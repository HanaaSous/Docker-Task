# Docker-Task
Apache server/client using Docker
**from server side==> -download httpd from centos7
                      -create custum repo contains rpms for httpd
                      -run server on 8899
                      -create scripts file to build server-image and run docker container

**from client side ==> -request custum repo from server
                       - use this repo to download httpd
                       - create script file to build client-image and run a container>
      
** create script to validate the download httpd rpm on client

STEPS:
1) install docker at your machine and start it.(for instulation ==> https://docs.docker.com/engine/install/centos/)
2) create server directory with Dockerfile and scripts.sh files : #mkdir /server
                                                                 #vi Dockerfile
                                                                 #vi scripts.sh
                                                                 #chmod +x scripts.sh
                                                                 #./scripts.sh                                                             

3)create client directory with Dockerfile and scripts.sh files : #mkdir /client
                                                                 #vi Dockerfile
                                                                 #vi scripts.sh
                                                                 #chmod +x scripts.sh
                                                                 #./scripts.sh  
4)create validation script : #vi validation.sh
                             #chmod +x validation.sh
                             #./validation.sh
