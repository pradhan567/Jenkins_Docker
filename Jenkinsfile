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
		withCredentials([usernamePassword(credentialsId: 'Docker-usr-pass', passwordVariable: 'Docker-pass', usernameVariable: 'Docker-usr')]) {
			sh "docker login -u ${Docker-usr} -p ${Docker-pass}"
                           }         
		    }
		}
     stage ('Run docker image') {
	    steps {
		    sh "docker rm -f nginx"
		    sh "docker run -it -d -p 80:80 --name=nginx nginx_jenkins"
		   }
		}
	}
}
          	
