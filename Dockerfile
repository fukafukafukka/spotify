FROM node:lts-alpine3.14

# RUN mkdir -p /var/www/spotify
# WORKDIR /var/www/spotify
# COPY ./ /var/www/spotify

WORKDIR ./
COPY ./ ./
RUN npm run build

EXPOSE 3000

# 開発時とデプロイ時で使い分ける。
# ENTRYPOINT ["npm", "run", "dev"]
ENTRYPOINT ["npm", "run", "start"]