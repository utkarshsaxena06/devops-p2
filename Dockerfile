FROM node:6-alpine
RUN apk add --no-cache tini
WORKDIR /usr/src/app
COPY . . 
RUN npm install
RUN npm cache clean --force
RUN /sbin/tini -- node ./bin/www
CMD [ "something", "something" ]