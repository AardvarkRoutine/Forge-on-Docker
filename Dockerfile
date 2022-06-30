FROM eclipse-temurin:8u332-b09-jdk-alpine

RUN wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2859/forge-1.12.2-14.23.5.2859-installer.jar \
    java -jar forge-1.12.2-14.23.5.2859-installer.jar --installServer

