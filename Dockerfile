FROM node:14-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm i

COPY . .

RUN npm run build

EXPOSE 5000

ENV HOST=0.0.0.0
ENV PORT=5000

CMD [ "node", "build" ]
