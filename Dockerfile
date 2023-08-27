FROM kong:3.3.1-alpine

COPY kong.yaml /config/kong.yaml
COPY kong.conf /etc/kong/kong.conf

USER root

ENV KONG_PROXY_LISTEN 0.0.0.0:8000
ENV KONG_DATABASE off
ENV KONG_DECLARATIVE_CONFIG /config/kong.yaml
ENV PORT 8000

EXPOSE 8000

RUN kong start
