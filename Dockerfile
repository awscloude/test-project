#FROM node:14-alpine
FROM node:0.8
# Create app directory
WORKDIR /usr/src/app

COPY . .

RUN npm install

#EXPOSE 8080
RUN cd /usr/src/app/src
EXPOSE 3000
#CMD [ "node", "server.js" ]
CMD [ "node", "index.js" ]
