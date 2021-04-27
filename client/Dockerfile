FROM node:lts-alpine

WORKDIR /app

RUN yarn global add @quasar/cli

COPY package.json ./

RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "quasar", "dev"]