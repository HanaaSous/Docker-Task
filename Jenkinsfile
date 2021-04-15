pipeline { 

    environment { 
        registryCredential = 'docker-hub' 
        dockerImage1 = '' 
        dockerImage2 = ''
	    httpdrpm = ''

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
             agent {
                docker {
			        image 'client-image'+':$BUILD_NUMBER'
		        }
             }
             steps {
		  sh 'rpm -qa httpd 2> /dev/null'
	     }
          }
        
        // stage('Deploying') {
             //steps { 
             //  script { 
             //        docker.withRegistry( '', registryCredential ) { 
             //           dockerImage1.push() 
             //          dockerImage2.push() 
             //       }
            //    } 
            //  }
       // }
     
             
        stage('Cleaning up') { 
                steps { 
                    sh "docker stop server-cont client-cont" 
                    sh "docker rm server-cont client-cont" 
                }
            } 
        }
}
