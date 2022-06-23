node('built-in')
{
  environment {
      dockerimage = ''
      registry = 'andersonmbella/demoapp'
  }
    stage('ContinousDownload')
    {
    git 'https://github.com/EdgarLopezPhD/PaySim.git'
    }
     stage('ContinousBuild')
    {
        sh 'mvn package'
    }
    stage('Archive') {
        archiveArtifacts 'target/*.jar'
    }
     stage('Build docker image') {
        script {
            dockerimage = docker.build. appv
        }
    }
}
