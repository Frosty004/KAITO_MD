FROM node:lts-buster

RUN git clone https://github.com/Frosty004/KAITO_MD/ /root/KAITO_MD

WORKDIR /root/KAITO_MD

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["npm", "start"]
