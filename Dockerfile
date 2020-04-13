FROM node:lts-alpine
WORKDIR /app
RUN npm install -g pm2@latest --registry=https://registry.npm.taobao.org \
&& npm install --registry=https://registry.npm.taobao.org
CMD ["npm", "run", "prd"]
EXPOSE 3000