FROM node:8-alpine

WORKDIR /usr/app

COPY package.json .

RUN npm i --quiet

COPY . .

RUN npm install ts-node-dev -g

CMD ["ts-node-dev", "src/index.ts"]