# Gunakan image Node.js versi 21 pada Alpine Linux sebagai base image
FROM node:21-alpine

# Set working directory di dalam container menjadi /app
WORKDIR /app

# Copy seluruh konten dari direktori lokal ke direktori /app di dalam container
COPY . .

# Install dependencies menggunakan npm
RUN npm install

# Expose port 3000 yang digunakan oleh aplikasi
EXPOSE 3000

# Command yang akan dijalankan saat container dijalankan
CMD ["npm", "start"]
