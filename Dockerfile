FROM node:8.4.0 as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

FROM node:8.4.0

WORKDIR /usr/src/app

COPY server.js ./server.js
COPY lib ./lib
COPY test ./test
COPY views ./views
COPY package.json ./package.json

COPY --from=builder /usr/src/app/node_modules ./node_modules

EXPOSE 3000
CMD [ "node", "server.js" ]
