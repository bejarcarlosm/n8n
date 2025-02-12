# Usa la imagen oficial de n8n
FROM n8nio/n8n:latest

# Instalar Gotenberg
RUN apt-get update && apt-get install -y curl && \
    curl -fsSL https://gotenberg.dev/install.sh | bash

# Expone los puertos de n8n y Gotenberg
EXPOSE 5678 3000

# Ejecutar ambos servicios en paralelo
CMD ["sh", "-c", "n8n & gotenberg --api-key=my-secret-key"]
