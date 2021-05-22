FROM openjdk:17-alpine

MAINTAINER  Naman Nigam <namannigam12@gmail.com>

ENV APP_DIR="/var/lib/app" LOG_DIR="/var/log/app" CONFIG_DIR="/etc/app/config" SHARED_DIR="/usr/share/app"

RUN mkdir -p $LOG_DIR $APP_DIR $CONFIG_DIR /usr/share/app

# Application specific task
ENV APP_PORT=9990 JMX_PORT=26862 APP_NAME="dock-me"

COPY target/dock-me.jar ${APP_DIR}/${APP_NAME}.jar
COPY ./docker/entrypoint.sh ${APP_DIR}/entrypoint.sh

WORKDIR ${APP_DIR}

EXPOSE ${APP_PORT} ${JMX_PORT}
ENTRYPOINT ["sh", "entrypoint.sh"]