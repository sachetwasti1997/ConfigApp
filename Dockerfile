FROM openjdk:17-alpine

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} configserver.jar

ENTRYPOINT ["java", "-jar", "/configserver.jar"]

EXPOSE 9261