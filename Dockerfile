FROM node

RUN git clone https://github.com/nextblu/meter-stats-frontend /meter-stats-server
WORKDIR /meter-stats-server
RUN npm install
RUN npm install -g grunt-cli
RUN grunt poa

EXPOSE  3000
ENV WS_SECRET="metermonitorsecret"
CMD ["npm", "start"]
