# Stage 1
#FROM node:latest as node
#WORKDIR /app
#COPY . .
#RUN npm install
#RUN npm run build --prod
# Stage 2
#FROM nginx:alpine
#COPY --from=node /app/dist/portal /usr/share/nginx/html
FROM nginx:alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY /dist/portal /usr/share/nginx/html


