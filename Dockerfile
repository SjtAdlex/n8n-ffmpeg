FROM node:18-bullseye

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    npm install -g n8n && \
    apt-get clean

USER node

EXPOSE 5678

CMD ["n8n"]
