# Menggunakan image Node.js versi 21
FROM node:21-alpine
# Set working directory container di /app
WORKDIR /app
# Salin source code ke working directory
COPY . .
# Build aplikasi
RUN npm install
# Melakukan ekspose port 3000 pada aplikasi
EXPOSE 3000
# Menjalankan server
CMD [ "npm", "start" ]