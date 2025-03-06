# Gunakan base image node.js
FROM node:18

# Set working Directory
WORKDIR /app

# Copy package.json dan lock.json
# COPY source dest
COPY package*.json ./

#  Install Dependencies
# RUN command
RUN npm install

COPY . .

# EXPOSE port 3000
# EXPOSE port
EXPOSE 3000

# Jalankan Service
# CMD [ "executable" ]
CMD [ "npm", "start" ]