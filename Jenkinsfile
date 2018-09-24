pipeline {
    agent any
    tools {nodejs "node"}
    stages {
            
        stage('Git') {
          steps {
              script {
                informGitDeployment 'milovaz'
              }
          }
        }
            
        stage('Build') {
          steps {
            sh 'npm install'
          }
        }
         
        stage('Test') {
          steps {
             sh 'npm test'
          }
        }      
    }
}
