FROM scolagreco/alpine-jdk
MAINTAINER Stefano Colagreco <stefano@colagreco.it>

VOLUME /tmp

ARG JAR_FILE=app/*.jar

ADD ${JAR_FILE} /opt/app.jar

EXPOSE 8080

WORKDIR	/opt/

# https://spring.io/guides/gs/spring-boot-docker/#_containerize_it
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/opt/app.jar"]
