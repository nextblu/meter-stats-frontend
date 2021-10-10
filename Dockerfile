FROM node

RUN git clone https://github.com/nextblu/meter-stats-frontend /meter-netstats-server
WORKDIR /meter-netstats-server
RUN npm install
RUN npm install -g grunt-cli
RUN grunt poa

EXPOSE  3000
CMD ["WS_SECRET='metermonitorsecret'", "npm", "start"]
