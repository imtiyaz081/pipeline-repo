pipeline {
    agent any	
    stages {
	
        stage('Build') {
		          
            steps {

	 git credentialsId: 'cb364375-3f42-4c0a-8dd2-84762daa5c27', url: 'https://github.com/imtiyaz081/javarepo.git'
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
