pipeline {
	agent any
	
	stages {
		stage ('Build Jar'){
			steps {
				sh "java -jar -Dwebdriver.chrome.driver=Drivers/chromedriver.exe Drivers/selenium-server-standalone-3.141.59.jar"
			}
			
		}
		stage('Deploy'){
			steps {
				sh "perl TC/TC_LOGIN.t"
			}
		}
	}
}