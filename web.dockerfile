# Selecciona una imagen base con Python
FROM httpd:alpine3.18

#Instalar git
RUN apk add --no-cache git openssh-client

#COPY ~/.ssh/id_ed25519 /root/.ssh/id_ed25519
#COPY ~/.ssh/id_ed25519.pub /root/.ssh/id_ed25519.pub

# Establece el directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo Python al contenedor
RUN git clone git@github.com:Juanbonilla10/FrontContableV2.git

# Mover front a htdocs
RUN mv /app/FrontContableV2/* /usr/local/apache2/htdocs/
