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
    stage("Deploy to staging") {
      steps {
        sh "docker run -d --rm -p 8765:8080 --name spring-boot-test anselmschaefer/spring-boot-test"
      }
    }
  }
}
