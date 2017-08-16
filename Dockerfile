FROM node:7
WORKDIR /app
RUN npm install meshcentral
CMD node meshcentral --notls --port 80
EXPOSE 80
EXPOSE 4433
VOLUME /app
