FROM nginx:alpine
RUN mkdir -p /src/static
WORKDIR /etc/nginx/conf.d
RUN rm -rf default.conf
COPY django.conf django.conf
EXPOSE 8000
CMD ["nginx", "-g", "daemon off;"]
