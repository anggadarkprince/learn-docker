FROM node:10.13.0 as builder
WORKDIR '/app'
COPY package* ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html