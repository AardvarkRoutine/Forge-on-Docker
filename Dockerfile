FROM eclipse-temurin:8u332-b09-jdk-alpine

ENV MINECRAFT_VERSION=1.12.2
ENV FORGE_VERSION ${MINECRAFT_VERSION}-14.23.5.2859

ENV FORGE_HOME=/srv/forge

RUN echo https://maven.minecraftforge.net/net/minecraftforge/forge/${FORGE_VERSION}/forge-${FORGE_VERSION}-installer.jar
RUN mkdir -p ${FORGE_HOME} && cd ${FORGE_HOME} && \
    wget https://maven.minecraftforge.net/net/minecraftforge/forge/${FORGE_VERSION}/forge-${FORGE_VERSION}-installer.jar && \
    java -jar forge-${FORGE_VERSION}-installer.jar --installServer && \
    rm forge-${FORGE_VERSION}-installer.jar forge-${FORGE_VERSION}-installer.jar.log && \
    echo "eula=true" > eula.txt  && ls -lla

WORKDIR ${FORGE_HOME}
CMD java -jar minecraft_server.${MINECRAFT_VERSION}.jar
