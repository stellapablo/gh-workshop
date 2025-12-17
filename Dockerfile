# Dockerfile de ejemplo para testing de seguridad
FROM nginx:1.25-alpine

# Copiar aplicación desde carpeta app
COPY app/ /usr/share/nginx/html/

# Exponer puerto 80
EXPOSE 80

# Usuario no-root para seguridad
USER nginx

CMD ["nginx", "-g", "daemon off;"]
