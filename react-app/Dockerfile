FROM node:22-slim

WORKDIR /app

COPY package.json /app/package.json

RUN npm install

COPY . /app

EXPOSE 3000

# CMD ["npm", "start"]
CMD ["echo", "Hello World"]