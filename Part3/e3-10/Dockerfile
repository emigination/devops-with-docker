FROM openjdk:8 as build-stage
RUN apt update && apt install git && git clone https://github.com/docker-hy/material-applications.git && cd /material-applications/spring-example-project && ./mvnw package

FROM openjdk:alpine
EXPOSE 8080
COPY --from=build-stage /material-applications/spring-example-project/target/docker-example-1.1.3.jar /file.jar
RUN adduser -D appuser && chown appuser /file.jar
USER appuser
CMD java -jar ./file.jar