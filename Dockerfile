FROM node:alpine

RUN mkdir -p /home/node/app/src
RUN mkdir /home/node/app/__tests__

COPY ./.env.production /home/node/app/.env.production
COPY ./.env.test /home/node/app/.env.test
COPY ./index.js /home/node/app/index.js
COPY ./package.json /home/node/app/package.json
COPY ./src /home/node/app/src
COPY ./__tests__ /home/node/app/__tests__

WORKDIR /home/node/app

ENV NODE_ENV=production
EXPOSE 8080

RUN npm install
ENTRYPOINT [ "npm", "start" ]
