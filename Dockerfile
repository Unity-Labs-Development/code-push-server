FROM node:lts-alpine
WORKDIR /app
COPY ./ /app
RUN npm install -g pm2@latest --registry=https://registry.npm.taobao.org \
&& npm install --registry=https://registry.npm.taobao.org
CMD ["pm2-docker", "start", "./bin/www"]
EXPOSE 3000