#specify a base image

FROM node:alpine
USER root

WORKDIR /usr/app

#install some dependencies

COPY ./package.json ./
RUN npm install
COPY ./ ./

#default command
CMD [ "npm","start" ]
