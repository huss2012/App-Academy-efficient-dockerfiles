FROM ubuntu

ADD . /app

RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y npm nodejs && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists*
RUN cd /app && npm install
WORKDIR /app

CMD ["npm", "start"]
