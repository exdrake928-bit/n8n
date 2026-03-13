FROM node:20-alpine

RUN apk add --no-cache python3 py3-pip && \
    pip3 install img2pdf Pillow --break-system-packages

RUN npm install -g n8n

EXPOSE 5678
CMD ["n8n", "start"]
