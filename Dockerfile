FROM node:18-bullseye

# install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg

# install n8n
RUN npm install -g n8n

# create n8n user
RUN useradd -m node
USER node

EXPOSE 5678

CMD ["n8n"]
