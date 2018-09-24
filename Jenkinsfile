pipeline {
    agent any
    tools {nodejs "node"}
    stages {
            
        stage('Git') {
          steps {
              script {
                env.scmVars = checkout scm
                echo "${env.scmVars}"
                informGitDeployment(env.scmVars)
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
