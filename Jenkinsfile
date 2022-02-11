pipeline {
	agent any
	
	stages {
	
		stage('Clone Repo'){
			steps {
				bat "git clone https://github.com/PranavDuggal/Selenium-Project.git"
			}
		}
		stage ('Build Jar'){
			steps {
				bat "java -jar -Dwebdriver.chrome.driver=Drivers/chromedriver.exe Drivers/selenium-server-standalone-3.141.59.jar"
			}
			
		}
		stage('Deploy'){
			steps {
				bat "/usr/bin/perl -w TC/TC_LOGIN.t"
			}
		}
	}
}