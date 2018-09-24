node {
    agent any
    def scmVars
    tools {nodejs "node"}
    
    stage('Git') {
      steps { 
        scmVars = checkout scm
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
