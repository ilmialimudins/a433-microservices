# Gunakan base image Node.js
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy seluruh source code
COPY . .

# Expose port 3001
EXPOSE 3001

# Jalankan service
CMD ["npm", "start"]
