pipeline {
    agent any
    tools {nodejs "node"}
    stages {
            
        stage('Git') {
          steps {
            env.scmVars = checkout scm
              echo "${env.scmVars}"
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
