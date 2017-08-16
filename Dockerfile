FROM node:7
WORKDIR /app
RUN npm install meshcentral
CMD node ./node_modules/meshcentral/meshcentral
EXPOSE 443
