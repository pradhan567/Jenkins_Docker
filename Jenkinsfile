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
      
    stage ('Docker Login') {
	    steps {
		 // withCredentials([string(credentialsId: 'Docker_Hub_Pwd', variable: 'Docker_Hub_Pwd')]) {
          sh "docker login -u mprad -p Vicky1994@."
		   }
		}
     stage ('Run docker image') {
	    steps {
		    sh "docker rm -f nginx"
		    sh "docker run -it -d -p 8088:8090 --name=nginx nginx_jenkins"
		   }
		}
	}
}
          	
