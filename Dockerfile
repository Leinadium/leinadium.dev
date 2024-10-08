FROM node:alpine AS builder
WORKDIR /app
COPY homepage/package*.json .
RUN npm ci
COPY homepage .
RUN npm run build
RUN npm prune --production

FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /app/dist /usr/share/nginx/html
EXPOSE 3000