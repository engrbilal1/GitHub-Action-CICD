FROM openjdk:8u151-jdk-alpine3.7

ENV APP_HOME /usr/src/app

COPY /home/runner/work/GitHub-Action-CICD/GitHub-Action-CICD/target/dependency/webapp-runner.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

ENTRYPOINT exec java -jar app.jar

EXPOSE 8070