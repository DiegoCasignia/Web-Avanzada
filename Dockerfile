# Usar una imagen base de PHP
FROM php:8.1-cli

# Instalar extensiones necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copiar los archivos de tu proyecto al contenedor
WORKDIR /app
COPY . /app

# Exponer el puerto 10000
EXPOSE 10000

# Comando para iniciar el servidor PHP integrado
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/app"]
