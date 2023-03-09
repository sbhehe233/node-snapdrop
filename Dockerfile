FROM node:lts-alpine
ARG PORT=80
ENV PORT=$PORT
WORKDIR /home/node/app

COPY package*.json ./

RUN npm ci

COPY . .

CMD ["node", "index.js"]
