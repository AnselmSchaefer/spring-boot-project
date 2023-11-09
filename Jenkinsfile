pipeline {
  agent any
  stages {
    stage("Compile") {
      steps {
        sh "mvn compile"
      }
    }
    stage("Unit test") {
      steps {
        sh "mvn test"
      }
    }
    stage("Build JAR") {
      steps {
        sh "mvn package"
      }
    }
    stage("Build Docker Image") {
      steps {
        sh "docker build -t anselmschaefer/spring-boot-test:latest ."
      }
    }
    stage("Docker push") {
      steps {
        sh "docker push anselmschaefer/spring-boot-test"
      }
    }
  }
}
