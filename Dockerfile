FROM node:20-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

Expose 80 

RUN npm run build
RUN npm install -g serve


CMD ["serve", "-s", "dist", "-l", "3000"]

