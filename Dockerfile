# Imagen con Java 17
FROM eclipse-temurin:17-jdk

# Directorio de trabajo
WORKDIR /app

# Copiar proyecto
COPY . .

# Dar permisos a mvnw
RUN chmod +x mvnw

# Construir el proyecto
RUN ./mvnw clean package -DskipTests

# Puerto de Spring
EXPOSE 8080

# Ejecutar la app
CMD ["java", "-jar", "target/carta-amor-0.0.1-SNAPSHOT.jar"]