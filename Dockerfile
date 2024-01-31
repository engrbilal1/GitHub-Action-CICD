FROM openjdk:8u151-jdk-alpine3.7

ENV APP_HOME /usr/src/app

ADD target/onlinebookstore.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar

EXPOSE 8070
