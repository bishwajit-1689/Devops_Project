//Jenkins File

// -------------------------------------
// This is my First Jenkins File script
// -------------------------------------


pipeline {
	
	agent {

		label 'Jenkins_slave'
	}

	stages {

		stage('Now Understood') {

			steps {

				echo 'At last Hello World !!'
			}

		stage(' Execute Shell '){

			steps {

				sh 'pwd'
			}

		}	

	  }
	}
}