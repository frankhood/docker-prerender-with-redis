FROM node:latest

ENV NODE_ENV=production

RUN mkdir /prerender \
  && wget https://github.com/fuww/prerender/archive/master.tar.gz -O - | \
    tar --strip-components 1 -xzC /prerender
WORKDIR /prerender

RUN npm install

EXPOSE 3000
CMD node server.js
