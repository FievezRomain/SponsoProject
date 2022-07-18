# syntax=docker/dockerfile:1
FROM node:16.16.0
ENV NODE_ENV=production
WORKDIR /
COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --production
COPY . .
CMD ["node", "App.js"]

