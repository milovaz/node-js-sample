pipeline {
    agent any
    def scmVars
    tools {nodejs "node"}
    stages {
            
        stage('Git') {
          steps {
              script {    
                scmVars = checkout scm
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
