FROM node:18.17.1-alpine
RUN apk add --no-cache python3 g++ make zlib git

RUN git clone https://github.com/atomicals/atomicals-js /app

WORKDIR /app

# RUN corepack enable && \
RUN yarn && yarn build

# ENTRYPOINT ["yarn", "cli"]