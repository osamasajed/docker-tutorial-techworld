FROM node:13-alpine

ENV MONGDO_DB_USERNAME=admin \
    MONGDO_DB_PASSWORD=pass

RUN mkdir -p /home/app
COPY ./assets /home/app
WORKDIR /home/app
RUN npm install

CMD [ "node", "server.js" ]
