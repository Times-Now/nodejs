node {
    env.NODEJS_HOME = "${tool 'recent node'}"
	// on linux / mac
	env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
	// on windows
	//env.PATH="${env.NODEJS_HOME};${env.PATH}"
	sh 'npm --version'
}
stages {
 stage('Build') {
            steps {
               // nodejs(nodeJSInstallationName: 'recent node', configId: 'suneha2794@gmail.com') {
                    sh 'npm config ls'
		   
                }
            }
        }
//}
