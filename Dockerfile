FROM node:8
MAINTAINER PRASAD
COPY package*.json ./
RUN npm install
EXPOSE 3000
CMD [ "npm", "start" ]