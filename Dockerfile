FROM openjdk:11
COPY ./src/by/training/echoclient /src/by/training/echoclient
WORKDIR src/by/training/echoclient
RUN javac EchoClient.java
ENTRYPOINT ["java", "EchoClient"]
