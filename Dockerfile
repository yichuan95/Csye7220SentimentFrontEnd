FROM node:8-alpine as app

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build



FROM nginx

COPY --from=app /app/build /usr/share/nginx/html