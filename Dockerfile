FROM node:24

WORKDIR /app

COPY package*.json ./
RUN npm install --production

COPY . .

# Supaya process dianggap "aktif"
CMD ["node", "main.js"]