# sys-api

## Development Instalation
1. Copy the file `application.properties.sample` in the same folder *(app/src/main/resources)* and name it `application.properties`

2. Change the following values for your enviroment ones.
- server.port
-  spring.datasource.url
-  spring.datasource.username
-  spring.datasource.password
```properties
server.port=<port>
spring.jpa.show-sql=true
spring.jpa.properties.hibernate.format_sql=true
spring.datasource.platform=postgres
spring.datasource.driver-class-name=org.postgresql.Driver
spring.datasource.url=jdbc:postgresql://localhost:5432/<database>?createDatabaseIfNotExist=true&useSSL=false
spring.jpa.properties.hibernate.dialect =org.hibernate.dialect.PostgreSQLDialect
spring.datasource.username=<username>
spring.datasource.password=<password>
server.error.include-message=always
spring.jpa.hibernate.ddl-auto=create-drop
spring.jackson.serialization.FAIL_ON_EMPTY_BEANS=false
```
3. Run the application with the property `spring.jpa.hibernate.ddl-auto=create-drop` to create and populate the database, then change the value to `update` if you dont want to create the database each time it runs.
4. Run the application with gradle builder
```bash
cd app
./gradlew bootRun
```
