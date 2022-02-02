def remote = [:]
remote.name = "artifactory-server"
remote.host = "64.225.51.239"
remote.allowAnyHosts = true
//def DIR = "gaston"
//def VERSION = "1.7.15"
node {
    stage ('checkout') {
        git branch: 'main',
    url: 'https://github.com/imejri/ssh-steps.git'
    }
    withCredentials([sshUserPrivateKey(credentialsId: 'ssh-steps-deploy', keyFileVariable: 'identity', passphraseVariable: '', usernameVariable: 'userName')]) {
        remote.user = userName
        remote.identityFile = identity
        stage("SSH Steps Rocks!") {
            withCredentials([usernamePassword(credentialsId: 'deploy-cred', passwordVariable: 'ARTIFACTORY_KEY', usernameVariable: 'user')]) {
            //writeFile file: 'abc.sh', text: 'ls'
            //sshCommand remote: remote, command: "mkdir ${DIR}, failOnError:false"
            //sshCommand remote: remote, command: "mkdir ${DIR}-${VERSION}"
            sshPut remote: remote, from: 'variable.sh', into: '.'
            sshCommand remote: remote, command: 'chmod +x variable.sh'
            sshCommand remote: remote, command: './variable.sh ${ARTIFACTORY_KEY}'
            //sshScript remote: remote, script: 'variable.sh'
            
            }//withcredentials
            
        }//withcredentials
    }//stage
}//node
