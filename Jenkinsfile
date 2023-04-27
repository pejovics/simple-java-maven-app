pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'docker build -t <DOCKER_HUB_USERNAME>/<IMAGE_NAME>:<TAG> .'
      }
    }
    stage('Push') {
      steps {
        withCredentials([usernamePassword(credentialsId: '<DOCKER_HUB_CREDENTIALS_ID>', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          sh 'docker login -u $USERNAME -p $PASSWORD'
          sh 'docker push <DOCKER_HUB_USERNAME>/<IMAGE_NAME>:<TAG>'
        }
      }
    }
  }
}
