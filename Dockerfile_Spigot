FROM openjdk:8-jdk-alpine AS build-env

ARG SPIGOT_VER="1.12.2"

WORKDIR /build
RUN apk --no-cache add git
RUN wget "https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar" -O BuildTools.jar
RUN java -jar BuildTools.jar --rev $SPIGOT_VER
RUN mkdir minecraft
RUN cp spigot-${SPIGOT_VER}.jar minecraft/spigot.jar
RUN mkdir data
RUN echo "eula=true" > data/eula.txt


FROM openjdk:8-jre-alpine

WORKDIR /data
COPY --from=build-env /build/minecraft /minecraft
COPY --from=build-env /build/data /data

EXPOSE 25565
ENTRYPOINT java -jar /minecraft/spigot.jar nogui