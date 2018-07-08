# use a nginx base image
FROM nginx

# set maintainer
LABEL maintainer "james.regis@gmail.com"

COPY ./web/ /usr/share/nginx/html

# set a health check
HEALTHCHECK --interval=30s \
            --timeout=30s \
            CMD curl -f http://127.0.0.1:80 || exit 1

# tell docker what port to expose
EXPOSE 80
