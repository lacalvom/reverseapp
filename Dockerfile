# Imagen base de Java 11
FROM openjdk:11-jdk-slim-bullseye

# Variables de entorno
ENV APP_FILE reverseapp-1.1.0.jar
ENV APP_HOME /app

# Puerto de exposicion.
EXPOSE 8080

# Directorio de trabajo
WORKDIR $APP_HOME

# Copiar archivo .jar de la aplicación
COPY target/$APP_FILE $APP_HOME/

# Ejecutar la aplicación
ENTRYPOINT ["bash", "-c"]
CMD ["exec java -jar $APP_FILE"]
