FROM node:lts-alpine

WORKDIR /app

RUN yarn global add @quasar/cli

COPY . .

RUN yarn install

EXPOSE 8080

CMD [ "quasar", "dev"]