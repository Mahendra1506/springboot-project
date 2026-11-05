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
    }
}
