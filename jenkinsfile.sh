pipeline {
    agent none
    stages {
        stage('Build') {
           
	               git 'https://github.com/imtiyaz081/javarepo.git'

              agent label mvn {
			
			sh 'mvn clean install'
                echo "this is build stage"
            }
        }
		stage('deploy') {
           
            steps {
                echo "this is deploy stage"
            }
        }
	stage('test') {
           
            steps {
                echo "this is test stage"
            }
        }	
    }
}
