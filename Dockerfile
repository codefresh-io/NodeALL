FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --silent

RUN npm install -g gulp

RUN npm install -g bower
RUN echo '{ "allow_root": true }' > /root/.bowerrc

RUN npm install -g node-inspector

COPY . /usr/src/app