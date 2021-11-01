FROM node:alpine

RUN mkdir -p /react-app

WORKDIR /react-app

COPY package*.json ./

RUN npm -g install npm@7.19.1

COPY . .

EXPOSE 3000

CMD ["npm", "start" ]

