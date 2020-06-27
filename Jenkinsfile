pipeline {
   agent { label 'master'}
     options { 
    skipDefaultCheckout()
    disableConcurrentBuilds()
	     timestamps()
   	}
    stages {
    stage('Clear workspace') {
      steps {
        cleanWs()
      	}
    	}  
    	stage('Source Checkout') {
      	steps {
	      	checkout([$class: 'GitSCM', branches: [[name: '*/master']], 
        	doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], 
        	userRemoteConfigs: [[credentialsId: 'jvenkat255', url: 'https://github.com/jvenkat255/deletenodejs.git']]])
        	}
    	}
    
	stage('Update Version') {
		steps {
		   script{
              		sh """
                		npm version patch"
         		"""
			}
		    }
		  }//End Version
		    
	}//Stages
 
   
} 
