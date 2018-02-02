FROM node:6.11-alpine

ENV MC2_INSTALL_PATH /opt/meshcentral

RUN mkdir -p ${MC2_INSTALL_PATH} && \
    cd ${MC2_INSTALL_PATH} && \
    npm install meshcentral
EXPOSE 80 443 4433
VOLUME /opt/meshcentral/node_modules/
ENTRYPOINT ["node", "/opt/meshcentral/node_modules/meshcentral/meshcentral", "--tlsoffload"]
