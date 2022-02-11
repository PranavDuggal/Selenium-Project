pipeline {
	agent any
	
	stages {
	
		
		stage ('Build Jar'){
			steps {
				bat "perl Drivers/selenium-server.pl"
			}
			
		}
		stage('Deploy'){
			steps {
				bat "perl TC/TC_LOGIN.t"
			}
		}
	}
}