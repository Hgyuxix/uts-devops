# Lapisan 1: Base image - Linux + Node.js 18 versi ringan
FROM node:18-alpine

# Lapisan 2: Tentukan folder kerja di dalam container
WORKDIR /app

# Lapisan 3: Copy package.json dulu (supaya cache lebih efisien)
COPY package*.json ./

# Lapisan 4: Install semua library
RUN npm install

# Lapisan 5: Copy semua file aplikasi ke dalam container
COPY . .

# Lapisan 6: Beritahu Docker bahwa app berjalan di port 3000
EXPOSE 3000

# Lapisan 7: Perintah yang dijalankan saat container dinyalakan
CMD ["node", "server.js"]
