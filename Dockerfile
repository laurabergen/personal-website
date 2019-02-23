FROM node:10.14.2

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY . .
RUN npm install --silent

EXPOSE 3000

CMD ["npm","start"]
