FROM eclipse-temurin:21-jdk

WORKDIR /app

COPY . .

# Use system-installed maven instead of the wrapper
RUN mvn clean package -DskipTests

EXPOSE 8081

CMD ["sh", "-c", "java -jar target/*.jar"]