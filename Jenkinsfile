def remote = [:]
remote.name = "artifactory-server"
remote.host = "64.225.51.239"
remote.allowAnyHosts = true

node {
    withCredentials([sshUserPrivateKey(credentialsId: 'ssh-steps-deploy', keyFileVariable: 'identity', passphraseVariable: '', usernameVariable: 'userName')]) {
        remote.user = userName
        remote.identityFile = identity
        stage("SSH Steps Rocks!") {
            //writeFile file: 'abc.sh', text: 'ls'
            sshCommand remote: remote, command: 'mkdir tux'
            //sshScript remote: remote, script: 'abc.sh'
            
        }
    }
}
