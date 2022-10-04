# select parent image
FROM openjdk:8
LABEL maintainer="rodideal.george@gmail.com"

# copy the source tree  to our new container
COPY spring-petclinic/ /spring-petclinic/
WORKDIR /spring-petclinic/

# package our application code
RUN ./mvnw package
EXPOSE 8080

# set the startup command to execute the jar
CMD ["java", "-jar", "java -jar target/*.jar"]
