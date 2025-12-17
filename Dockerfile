# Dockerfile de ejemplo para testing de seguridad
FROM nginx:1.25-alpine

# Copiar configuración personalizada si existe
COPY workflows/ /usr/share/nginx/html/

# Exponer puerto 80
EXPOSE 80

# Usuario no-root para seguridad
USER nginx

CMD ["nginx", "-g", "daemon off;"]
