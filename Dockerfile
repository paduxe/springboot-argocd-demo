FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/springboot-argocd-demo.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]
