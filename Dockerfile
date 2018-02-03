FROM node:6.11-alpine

COPY startmeshcentral.sh /
RUN mkdir -p /home/meshserver/meshcentral-data \
    && chmod +x /startmeshcentral.sh
COPY package.json /home/meshserver/
COPY config.json /home/meshserver/meshcentral-data/
RUN cd /home/meshserver \
    && npm install github:Ylianst/MeshCentral
    
ENV PORT 443  
ENV REDIRPORT 80  
ENV MPSPORT 4443

EXPOSE 80 443 4443

ENTRYPOINT ["/startmeshcentral.sh"]
