FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install img2pdf Pillow --break-system-packages

USER node
