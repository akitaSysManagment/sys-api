FROM gradle:jdk18-alpine
COPY ./app /app
WORKDIR /app
RUN ./gradlew build
RUN cp /app/build/libs/sys_management-0.0.1-SNAPSHOT.war /app.war
ARG JAR_FILE=app/build/libs/sys_management-0.0.1-SNAPSHOT.war
COPY ${JAR_FILE} app.war
ENTRYPOINT ["java","-jar","/app.war"]
