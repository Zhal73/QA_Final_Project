FROM maven:3.6.1-jdk-8-alpine AS BUILD
COPY . /src
WORKDIR /src
RUN mvn -f pom.xml clean package 

FROM openjdk:8-jre-alpine
COPY --from=BUILD /src/target/spring-petclinic-rest-2.2.5.jar /spring-petclinic-rest-2.2.5.jar  
EXPOSE 9966
ENTRYPOINT ["java","-jar","/spring-petclinic-rest-2.2.5.jar"]

