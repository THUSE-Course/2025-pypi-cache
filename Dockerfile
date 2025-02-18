FROM docker.net9.org/library/nginx:alpine

COPY pypi.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/cache/nginx/pypi_cache && \
    chown -R nginx:nginx /var/cache/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]