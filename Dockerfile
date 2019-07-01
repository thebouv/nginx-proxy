FROM jwilder/nginx-proxy
RUN { \
      echo 'server_tokens off;'; \
      echo 'client_max_body_size 100m;'; \
      echo 'add_header X-Frame-Options "SAMEORIGIN";'; \
    } > /etc/nginx/conf.d/my_proxy.conf
