pipeline { 

    environment { 

        registry1 = "hanaasous/server" 
        registry2 = "hanaasous/client" 
        gitHubsource = "hanaasous/docker-task"

        registryCredential = 'docker-hub' 

        dockerImage1 = '' 
        dockerImage2 = ''

    }

    agent any 

    stages { 

        stage('Building server-image ') { 

            steps { 

                script { 

                    dockerImage1 = docker.build("server-image"+":$BUILD_NUMBER", "./server")

                }

            } 
        }
          stage('Runing server-image ') { 

            steps { 

                script { 

                    dockerImage1.run('-d -it -p 8899:80 --name=server-cont') 

                }

            } 
        }
        stage('Building client-image ') { 

            steps { 

                script { 
                    dockerImage2 = docker.build("client-image"+":$BUILD_NUMBER", "./client") 

                }

            } 
        }
        
        stage('Run client Image') {
            
            steps {
                script {
                    dockerImage2.run('--name=client-cont')
                }
            }
        }
         stage('Testing ') {
             steps {
                 script{
                  dockerImage2.inside(){
                        sh 'pwd'
                  }
                 }
             }
             
            
        }

    stage('Cleaning up') { 

            steps { 

                sh "docker stop server-cont client-cont" 
                sh "docker rm server-cont client-cont" 


            }

        } 

    }

}
