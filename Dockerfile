FROM nginx:stable-alpine
RUN apk update
WORKDIR /app
COPY dist/ /app
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 8080
ENTRYPOINT ["nginx", "-g", "daemon off;"]
