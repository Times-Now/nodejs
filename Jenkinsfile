node {
   
   stage('Code checkout') { // for display purposes
     git credentialsId: 'GithubID', url: 'https://github.com/Times-Now/Maven.git'  
   }
   stage('Build') {
    withMaven(jdk: 'java-1.8', maven: 'maven-3.6.1') {
      sh 'mvn clean compile'
    } 
   }
   }
