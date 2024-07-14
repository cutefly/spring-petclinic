FROM eclipse-temurin:17-jre
LABEL maintainer="prettyfly@korea.com" 
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /home/spring-petclinic-3.3.0-SNAPSHOT.jar
CMD ["java","-jar","/home/spring-petclinic-3.3.0-SNAPSHOT.jar"]
