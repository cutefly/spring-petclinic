#!groovy

pipeline {
  agent none
  stages {
    stage('Maven Install') {
      agent {
        docker {
          image 'maven:3.9.8-eclipse-temurin-17'
          // args '-v /home/jenkins/.m2:/.m2'
        }
      }
      steps {
        sh 'mvn --version'
        sh 'pwd'
        sh 'id'
        sh 'ls -al /home/'
        // sh 'ls -al /home/jenkins/.m2/repository'
        sh 'mvn -Dmaven.repo.local=$HOME/.m2/repository -Dmaven.test.skip=true clean package'
        sh 'ls -al'
        sh 'ls -al target/'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'pwd'
        sh 'ls -al'
        sh 'ls -al target/'
        sh 'docker build -t cutefly/spring-petclinic:latest .'
      }
    }
  }
}
