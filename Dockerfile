FROM node:hydrogen-alpine AS builder
WORKDIR /build
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

############################################

FROM nginx:alpine AS production
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /build/build/ /usr/share/nginx/html
ENTRYPOINT ["nginx", "-g", "daemon off;"]
