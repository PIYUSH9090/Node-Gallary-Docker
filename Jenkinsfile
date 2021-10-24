pipeline { 

    environment { 

// Credential of docker in jenkins server 

        registry = "piyush9090/node-gallary-docker" 

        registryCredential = 'dockerHub' 

        dockerImage = '' 

    }

    agent any 

    stages {  

        stage('Cloning our Git') { 

            steps { 

                git 'git@github.com:PIYUSH9090/Node-Gallary-Docker.git' 

            }

        } 

        stage('Building our image') { 

            steps { 

                script { 

                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 

                }

            } 

        }

        stage('Deploy our image') { 

            steps { 

                script { 

                    docker.withRegistry( '', registryCredential ) { 

                        dockerImage.push() 

                    }

                } 

            }

        } 

        stage('Cleaning up') { 

            steps { 

// Removing builded docker image(Trash) from jenkins server 

                sh "docker rmi $registry:$BUILD_NUMBER" 

            }

        } 

    }

}