node {
    env.NODEJS_HOME = "${tool 'node'}"
    env.PATH = "${env.NODEJS_HOME}/bin:${env.PATH}"

    def app
    def workspace = env.WORKSPACE
    def version
    def version_qa
    def app_name = "apresentacao"
    def image_name = "menu"
    def image = "myhub/${image_name}"
    def git_url = "bitbucket.org/myuser/myrepo.git"


    stage('Clone repository') {
        git branch: 'master',
            credentialsId: 'jenkins',
            url: "https://myuser@${git_url}"
    }


    stage('Build') {
        app = docker.build("${image}")         
    }

    stage('Dependencies') {
        // sh 'npm install -g node-gyp'
        sh 'npm config set [--global] devdir /tmp/.gyp'
        sh 'npm install'
    }

    stage('E2E Tests') {
        sh 'npm run exec:e2e'
    }

    stage('Tagging') {
        try {
            withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'jenkins', usernameVariable: 'GIT_USERNAME', passwordVariable: 'GIT_PASSWORD']]) {
                sh("echo ${env.GIT_USERNAME}")
                sh("git config --global user.email 'email'")
                sh("git config --global user.name 'Jenkins'")
                sh("git config credential.username ${env.GIT_USERNAME}")
                sh("git config credential.helper '!f() { echo password=\$GIT_PASSWORD; }; f'")
                sh('/opt/tools/create-tag')

                version = sh (script: "stepup version | sed -e 's/v//g'", returnStdout: true).trim()
                echo "next-release: [${version}]"
            }   
        } finally {
            sh("git config --unset credential.username")
            sh("git config --unset credential.helper")
        }

    }

}
