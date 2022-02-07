pipeline {
	agent any
	
	stages {
		stage ('Webdriver'){
			dir("Drivers") {
				sh "java -jar -Dwebdriver.chrome.driver=chromedriver.exe selenium-server-standalone-3.141.59.jar"
			}
			dir("TC"){
				sh "perl TC_LOGIN.t"
			}
		}
	}
}