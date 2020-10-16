FROM openjdk:8u212-jdk

ADD ./target/*.jar app.jar
EXPOSE 8080:8080

CMD exec java $JAVA_OPTS \
    -XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap \
    -Djava.security.egd=file:/dev/./urandom \
    -Djava.library.path=/ \
    -jar /app.jar $APP_ARGS
