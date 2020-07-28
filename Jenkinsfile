pipeline {
  agent any
  
  stages {
    stage ('Git Checkout') {
	    steps {
		  git "https://github.com/pradhan567/CI_CD-pipeline.git"
		   }
		}
    stage ('Build docker image') {
	    steps {
		   sh "docker build -t nginx_jenkins ."
		   }
		}
	stage ('Run docker image') {
	    steps {
		   sh "docker run -d -p 8080:8080 --name=nginx nginx_jenkins"
		   }
		}
	}
}
          	