FROM maven
WORKDIR /app
COPY . .
RUN mvn package
CMD ["java","-jar","/app/target/spring-boot-web.jar"]
