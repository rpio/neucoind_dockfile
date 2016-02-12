FROM resin/armv7hf-supervisor
# RUN echo "deb http://http.debian.net/debian wheezy-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install python
RUN apt-get -y install g++ make libboost-system-dev libboost-filesystem-dev libboost-program-options-dev libboost-thread-dev libdb++-dev libssl-dev libqrencode-dev libpng-dev qt5-default qttools5-dev-tools pkg-config
RUN git clone https://github.com/NeuCoin/neucoin
RUN cd ./neucoin/src && make -f Makefile.unix all
