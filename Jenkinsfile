pipeline {
    agent any
    
    tools {nodejs "node"}
    stages {
            
        stage('Git') {
          steps {
            checkout scm
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
