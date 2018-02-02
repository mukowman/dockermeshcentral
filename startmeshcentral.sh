#!/bin/sh
export PORT  
export REDIRPORT
export MPSPORT
export EMAIL
export HOST
export SMTP
export DB
export MONGODB
export MONGODBCOL

su - meshserver
cd /home/meshserver/
npm install github:Ylianst/MeshCentral

sed -i "s#: 443,#: $PORT,#" meshcentral-data/config.json
sed -i "s#: 80,#: $REDIRPORT,#" meshcentral-data/config.json
sed -i "s#: 4443,#: $MPSPORT,#" meshcentral-data/config.json

node node_modules/meshcentral/meshcentral.js --tlsoffload
