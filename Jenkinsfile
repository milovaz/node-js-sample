@Library('git-feedback-shared-library')
pipeline {
    agent any
    tools {nodejs "node"}
    stages {
            
        stage('Git') {
          steps {
              script {
                env.scmVars = checkout scm
                echo "${env.scmVars}"
                sayHello 'Chewei'
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
