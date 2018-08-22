FROM openjdk:11
COPY .src /src/by/training/echoclient
WORKDIR src/by/training/echoclient
RUN javac EchoClient.java
ENTRYPOINT ["java", "EchoClient"]