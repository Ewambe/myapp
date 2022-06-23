node('built-in')
{
  def app
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
            app = dockerimage = docker.build.("andersonmbella/myapp")
        }
    }
}
