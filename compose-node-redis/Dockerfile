FROM node:10.13.0

WORKDIR '/app'

COPY package* ./
RUN npm install
COPY . .

CMD ["npm", "start"]