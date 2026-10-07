FROM node:22-slim
WORKDIR /app
COPY package.json ./
RUN npm install --omit=dev
COPY server.js index.html ./
ENV DB_FILE=/data/psp.db NODE_ENV=production
VOLUME /data
EXPOSE 3000
CMD ["node","server.js"]
