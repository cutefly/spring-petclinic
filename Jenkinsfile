#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.9.8'
          args '-v /.m2:/.m2'
        }
      }
      steps {
        sh 'mvn -X clean install'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -t cutefly/spring-petclinic:latest .'
      }
    }
  }
}
