pipeline {
	agent any
	
	stages {
		stage ('Build Jar'){
			steps {
				sh "java -jar -Dwebdriver.chrome.driver=chromedriver.exe selenium-server-standalone-3.141.59.jar"
			}
			
		}
		stage('Deploy'){
			steps {
				sh "perl TC_LOGIN.t"
			}
		}
	}
}