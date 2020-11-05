FROM openjdk:8-jdk-alpine
# /tmp 아래 데이터 저장
VOLUME /tmp
COPY target/*SNAPSHOT.jar docker-springboot.jar
EXPOSE 8080
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker-springboot.jar"]
