FROM openjdk:8-jre-alpine3.9
MAINTAINER andy
COPY paysim-2.0-SNAPSHOT.jar /demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/demo.jar"]
