FROM node:latest

MAINTAINER s.raweeroj@gmail.com
#update 
RUN apt-get update && apt-get dist-upgrade -y \
    && rm -rf /var/lib/apt/lists/*

COPY . /apps/
WORKDIR /apps/
RUN npm install
EXPOSE 3000
#run command
CMD ["npm","start"]
