FROM openjdk:11.0.10-jdk
EXPOSE 8080
WORKDIR /app
ADD targert/carambola-todo-service-dev-1.0.0.jar /app/application.jar

ENTRYPOINT ["java","-jar","/app/application.jar"]