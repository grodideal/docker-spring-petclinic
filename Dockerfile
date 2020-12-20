FROM openjdk:8
LABEL maintainer="rodideal.george@gmail.com"
COPY spring-petclinic/ /spring-petclinic/
WORKDIR /spring-petclinic/
RUN ./mvnw package
EXPOSE 8080
CMD ["java", "-jar", "target/spring-petclinic-2.4.0.BUILD-SNAPSHOT.jar"]
