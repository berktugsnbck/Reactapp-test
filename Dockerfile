FROM node:alpine

RUN mkdir -p /react-app

WORKDIR /react-app

COPY package*.json ./

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["npm", "start" ]

