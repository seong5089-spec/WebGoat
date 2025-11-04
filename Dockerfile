FROM openjdk:11.0.1-jre-slim

RUN mkdir -p /home/webgoat-server

COPY ./webgoat-server/target/webgoat-server-v8.2.0-SNAPSHOT.jar /home/webgoat/webgoat.jar

EXPOSE 8080

WORKDIR /home/webgoat

ENTRYPOINT ["java", "-jar", "/home/webgoat/webgoat.jar"]
CMD ["--server.port=8080", "--server.address=0.0.0.0"]
