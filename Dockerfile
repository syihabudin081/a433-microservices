# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory di dalam container
WORKDIR /app

# Menyalin semua file dari direktori lokal ke dalam working directory di dalam container
COPY . .

# Mengatur environment variable untuk mode produksi dan host database
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk produksi dan menjalankan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port 8080 yang digunakan oleh aplikasi
EXPOSE 8080

# Menjalankan server aplikasi saat container diluncurkan
CMD ["npm", "start"]
