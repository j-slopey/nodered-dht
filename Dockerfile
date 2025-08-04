# Node-RED image
FROM nodered/node-red
USER root
# Install the BCM2835 library
RUN wget http://www.airspayce.com/mikem/bcm2835/bcm2835-1.71.tar.gz && \
    tar zxvf bcm2835-1.71.tar.gz && \
    cd bcm2835-1.71 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf bcm2835-1.71 bcm2835-1.71.tar.gz
# DHTXX Node and dependency
RUN npm install node-dht-sensor node-red-contrib-dht-sensor

