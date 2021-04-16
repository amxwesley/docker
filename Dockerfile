#specify a base image

FROM node:14-buster

WORKDIR /usr/app

#install some dependencies

COPY ./package.json ./
RUN npm --version
RUN npm install -g --save dompurify@2.0.8 redoc-cli
COPY ./ ./

#default command
CMD [ "npm","start" ]
