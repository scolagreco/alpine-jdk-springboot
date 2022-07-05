[![](https://images.microbadger.com/badges/image/scolagreco/alpine-jdk-springboot.svg)](https://microbadger.com/images/scolagreco/alpine-jdk-springboot)
[![](https://images.microbadger.com/badges/commit/scolagreco/alpine-jdk-springboot.svg)](https://microbadger.com/images/scolagreco/alpine-jdk-springboot)

[![Docker Stars](https://img.shields.io/docker/stars/scolagreco/alpine-jdk-springboot.svg)](https://hub.docker.com/r/scolagreco/alpine-jdk-springboot/)
[![Docker Pulls](https://img.shields.io/docker/pulls/scolagreco/alpine-jdk-springboot.svg)](https://hub.docker.com/r/scolagreco/alpine-jdk-springboot/)

# Docker Alpine Linux + JDK (Oracle) for running Spring Boot App

Repository con il dockerfile per creare una Docker Image per eseguire app Spring Boot.

## Info

Si parte dall'immagine Alpine JDK creata dal seguente [Dockerfile](https://github.com/scolagreco/alpine-jdk/blob/master/Dockerfile).

Il JAR contenuto è solamente a titolo di esempio ed è stato creato con il codice presente sul seguente [Blog](https://www.boraji.com/spring-boot-hello-world-example).

In fase di build è possibile passare come argomento il JAR da utilizzare, altrimenti viene usato quello di esempio nella directory app/.

Sono utilizzati:

- VOLUME che punta /tmp visto che sarà li che l'app Spring Boot creerà le working directory di Tomcat per default;

- "/dev/urandom" per aumentare l'entropia necessaria al calcolo del valore random che tomcat assegna per gli id di sessione e velocizzarne l'avvio.

Viene esposta verso l'esterno la porta 8080, quella usata dal tomcat embedded.

Per eseguire il container:

	docker run --name testspringboot -p 8080:8080 -d scolagreco/alpine-jdk-springboot

Per altre informazioni su Spring Boot App in Container potete guardare [qui](https://spring.io/guides/gs/spring-boot-docker/#_containerize_it).

## Versions

- `latest` [(Dockerfile)](https://github.com/scolagreco/alpine-jdk-springboot/blob/master/Dockerfile)

