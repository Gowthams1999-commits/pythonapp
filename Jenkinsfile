pipeline{
agent any
environment {
  git_repo_name = "https://github.com/Gowthams1999-commits/pythonapp.git"
  docker_repo_name = "gowtham904"
  image_name = "gowtham904/pythonapp:v1"
  docker_repo_password = "Welcome@dockerhub100"
}
stages {
  stage('clone git repo') {
    steps {
git credentialsId: 'git_repo_creds', url: 'https://github.com/Gowthams1999-commits/pythonapp.git'
      
    }
  }
stage('Build image') {
    steps {
      sh 'docker build --network host -t ${image_name} .'
    }
  }
stage('Login to dockerhub') {
    steps {
sh 'echo ${docker_repo_password} | docker login -u ${docker_repo_name} --password-stdin'
    
    }
  }
stage('Push docker image to docker hub') {
    steps {
sh 'docker push ${image_name}'
     
    }
  }

}
post {
  success {
    echo 'docker image created'
  }
}
}
