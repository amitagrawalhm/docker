node {
    def app

    stage('clone repository') {
      checkout scm
     }
    stage('Build image') {
      app = docker.build("amitcsaec/mycentos")
     }
    stage('test image') {
      app.inside {
       echo "Test Passed"
       }
     }
    stage('Push image') {
      docker.withRegistry('https://hub.docker.com','docker-hub') {
         app.push("${env.BUILD_NUMBER}")
         app.push("latest")
         }
         echo "Trying to push docker image to dokcer hub"
     }
}
