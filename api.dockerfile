# Usa una imagen base con JDK
FROM openjdk:11-jre-slim

# Instala git
RUN apt-get update && apt-get install -y git

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Clona el repositorio (reemplaza con la URL de tu repositorio)
RUN git clone git@github.com:Juanbonilla10/BackendContableV2.git

# Establece el directorio de trabajo en el contenedor
WORKDIR /app/BackendContableV2

# Expone el puerto que tu aplicación usará (si aplica)
EXPOSE 8080

# Comando para ejecutar el .jar (ajusta la ruta según sea necesario)
CMD ["java", "-jar", "target/V2-0.0.1.jar"]
