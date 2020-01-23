node {
    env.NODEJS_HOME = "${tool 'Node 13.6.0'}"
	// on linux / mac
	//env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
	// on windows
	env.PATH="${env.NODEJS_HOME};${env.PATH}"
	sh 'npm --version'
}
