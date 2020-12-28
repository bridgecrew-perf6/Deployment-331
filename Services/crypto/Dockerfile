FROM java:8
WORKDIR /
ADD CryptoService.jar CryptoService.jar
ENTRYPOINT ["java", "-Dprocess.name=CryptoService", "-jar", "CryptoService.jar"]
