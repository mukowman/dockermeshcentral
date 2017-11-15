FROM node:6.11-alpine

ENV MC2_INSTALL_PATH /opt/meshcentral

RUN mkdir -p ${MC2_INSTALL_PATH} && \
    cd ${MC2_INSTALL_PATH} && \
    npm install meshcentral
EXPOSE 8001 8002
VOLUME /opt/meshcentral/node_modules/
ENTRYPOINT ["node", "/opt/meshcentral/node_modules/meshcentral/meshcentral", "--notls", "--port 8001", "--mpsport 8002"]
