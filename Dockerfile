FROM n8nio/n8n:latest

USER root

RUN apk add --no-cache python3 py3-pip py3-pillow && \
    pip3 install img2pdf --break-system-packages --no-deps

USER node
