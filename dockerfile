# Gunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory dalam container
WORKDIR /app

# Menyalin seluruh source code ke working directory
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan item-db sebagai database host
ENV NODE_ENV=production
ENV DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Ekspos port 8080
EXPOSE 8080

# Jalankan aplikasi saat container dimulai
CMD ["npm", "start"]
