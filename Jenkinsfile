node {
    env.NODEJS_HOME = "${tool 'recent node'}"
	// on linux / mac
	env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
	// on windows
	//env.PATH="${env.NODEJS_HOME};${env.PATH}"
	sh 'npm --version'
}
stage('Build') {
        app = docker.build("${image}")         
    }
