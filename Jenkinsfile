pipeline { 

    environment { 

        registry1 = "hanaasous/server" 
        registry2 = "hanaasous/client" 
        gitHubsource = "hanaaSous/docker-task"

        registryCredential = 'docker-hub' 

        dockerImage1 = '' 
        dockerImage2 = ''

    }

    agent any 

    stages { 

        stage('Building our image') { 

            steps { 

                script { 

                    dockerImage1 = docker.build  gitHubsource + "/server" + ":$BUILD_NUMBER" 
                    dockerImage2 = docker.build  gitHubsource + "/client" + ":$BUILD_NUMBER" 

                }

            } 
        }
        
        
        stage('Run and Test our Images') {
            
            steps {
                script {
                    dockerImage1.run('-d -it -p 8899:80 --name=server-cont')
                    dockerImage2.run('--name=client-cont')
                }
            }
        }

 

    }

}
