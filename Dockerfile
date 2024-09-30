FROM ibm-semeru-runtimes:open-21-jre-jammy

ENV TZ=Asia/Shanghai

RUN apt update \
    && apt upgrade -y \
    && apt clean \
    && rm -rf /var/cache/apt/archives/*

EXPOSE 8080/tcp

ADD ./reader.jar /app/bin/reader.jar

CMD "java" "-jar" "/app/bin/reader.jar"