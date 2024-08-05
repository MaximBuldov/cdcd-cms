FROM node:20
WORKDIR /app
RUN npm install -g yarn
COPY package.json yarn.lock ./
RUN yarn
COPY . .
RUN yarn build
EXPOSE 1337
CMD ["yarn", "start"]

