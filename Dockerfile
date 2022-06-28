FROM gradle:jdk18-alpine
COPY ./app /app
WORKDIR /app
RUN ./gradlew clean build --rerun-tasks --no-build-cache
RUN cp build/libs/sys_management-0.0.1-SNAPSHOT.war /app.war
ENTRYPOINT ["java","-jar","/app.war"]
