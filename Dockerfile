FROM node:8.11.2

ARG NODE_ENV="production"

ARG HTTP_PROXY="http://proxy.noc.kochi-tech.ac.jp:3128"

RUN npm -g config set proxy ${HTTP_PROXY}

ENV CROWI_VERSION v1.7.6
ENV NODE_ENV ${NODE_ENV}

WORKDIR /crowi

ADD . /crowi
RUN npm install --update npm@5 -g
RUN npm install --unsafe-perm

CMD ["npm", "start"]
