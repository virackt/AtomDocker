From ubuntu:latest
WORKDIR /home/Atom
copy ./encrypt.sh /home/Atom/
ENV NODE_VERSION 18.18.0

RUN apt-get update && apt-get install -y wget && wget https://github.com/atomicals/atomicals-js/archive/refs/heads/master.zip && apt-get install unzip && unzip -o master.zip && wget https://nodejs.org/dist/v18.18.0/node-v18.18.0-linux-x64.tar.xz 
RUN apt-get install -y git && apt-get install xz-utils && apt-get install bzip2 &&  tar -Jxvf node-v18.18.0-linux-x64.tar.xz -C /usr/local --strip-component=1 && rm node-v18.18.0-linux-x64.tar.xz && ln -s /usr/local/bin/node /usr/local/bin/nodejs && cd atomicals-js-master && npm install -g yarn && npm install && npm run build
CMD ["/bin/bash", "encrypt.sh"]