pipeline {
	agent any
	
	stages {
	
		stage('Clone Repo'){
			steps {
				sh "git clone https://github.com/PranavDuggal/Selenium-Project.git"
			}
		}
		stage ('Build Jar'){
			steps {
				sh "java -jar -Dwebdriver.chrome.driver=Drivers/chromedriver.exe Drivers/selenium-server-standalone-3.141.59.jar"
			}
			
		}
		stage('Deploy'){
			steps {
				sh "/usr/bin/perl -w TC/TC_LOGIN.t"
			}
		}
	}
}