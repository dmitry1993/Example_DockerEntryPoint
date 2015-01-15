FROM ubuntu:14.04


RUN apt-get update
RUN apt-get install -y wget g++ make git npm



# Install Node.js
RUN \
  cd /tmp && \
  wget http://nodejs.org/dist/v0.10.29/node-v0.10.29-linux-x64.tar.gz && \
  tar xvzf node-v0.10.29-linux-x64.tar.gz && \
  rm -f node-v0.10.29-linux-x64.tar.gz && \
  cd node-v0.10.29-linux-x64 && \

  npm install -g npm && \
  echo -e '\n# Node.js\nexport PATH="node_modules/.bin:$PATH"' >> /root/.bashrc



RUN git clone git@github.com:AntonioJFSousa/Trading.git /home/Trading001





CMD [ "node", "utrade.js" ]