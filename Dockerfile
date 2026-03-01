# Usa una imagen oficial ligera de Nginx basada en Alpine Linux
FROM nginx:alpine

# Agrega metadatos básicos de quién mantiene la imagen
LABEL maintainer="Tektonium Project"

# Elimina el HTML base de Nginx si se desea, NGINX:alpine a veces requiere permisos limpios, aunque COPY lo sobrescribirá
RUN rm -rf /usr/share/nginx/html/*

# Copia nuestro index.html al directorio del servidor de nginx
COPY index.html /usr/share/nginx/html/index.html
COPY galeria.html /usr/share/nginx/html/galeria.html

# Exponer el puerto estándar de HTTP
EXPOSE 80

# Nginx se ejecuta por defecto en primer plano, no es necesario un CMD
