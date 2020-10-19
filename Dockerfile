FROM node:latest as builder
WORKDIR /dockerangular
COPY . .
RUN npm i
RUN npm run build --prod



FROM nginx:alpine
COPY --from=builder /dockerangular/dist/dockerangular /usr/share/nginx/html






