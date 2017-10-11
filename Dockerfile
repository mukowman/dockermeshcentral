FROM node:7
WORKDIR /home
RUN npm install meshcentral
CMD node meshcentral --notls --port 8001 --mpsport 8002
EXPOSE 8001 8002
VOLUME /home
