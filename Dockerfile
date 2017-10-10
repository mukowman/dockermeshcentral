FROM node:7
ENV MC2_INSTALL_PATH /opt/meshcentral
RUN mkdir -p ${MC2_INSTALL_PATH} && \
    cd ${MC2_INSTALL_PATH} && \
    npm install meshcentral
ENTRYPOINT ["node", "/opt/meshcentral/node_modules/meshcentral/meshcentral", "--notls", "--port 8001", "--mpsport 8002"]
EXPOSE 8001 8002
VOLUME /opt/meshcentral
