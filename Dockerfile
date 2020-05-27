FROM node:10-alpine
RUN mkdir -p /home/node/app/node_modules
RUN chown -R node:node /home/node/app
WORKDIR /home/node/app
COPY package*.json ./
USER node
RUN npm install express --save
COPY --chown=node:node . .
EXPOSE 3000
CMD [ "node", "index.js" ]
