FROM openjdk:11
RUN apt-get install -y git \
&& git clone https://github.com/Deazushka/trainingclient.git trainingclient/
WORKDIR trainingclient/src/
RUN javac EchoClient.java
RUN jar cfe echo.jar EchoClient EchoClient.class
ENTRYPOINT ["java", "-jar", "echo.jar"]
