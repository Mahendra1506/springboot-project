pipeline{
    agent any
    stages{
        stage("Execute Dockerfile"){
            steps{
                sh 'docker build -t springboot-project .'
            }
        }
        stage("Creting container"){
            steps{
                sh 'docker run -d -p 9090:9090 springboot-project'
            }
        }
        post{
            success{
                emailext(
                    to :'spacebasic7@gmail.com, siddardha070@gmail.com ',
                    subject : 'About Springboot Project ',
                    body : 'http://192.168.255.254:9090'
                )
            }
        }
    }
}
