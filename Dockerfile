FROM openjdk:17-jdk-slim AS build
WORKDIR /app
COPY . .
RUN ./mvnw package -DskipTests

FROM openjdk:17-jdk-slim
COPY --from=build /app/target/argo-demo.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]