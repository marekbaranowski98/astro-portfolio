FROM node:lts-slim

LABEL org.opencontainers.image.authors='me@marekbaranowski.net'
WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .
ENV HOST=0.0.0.0
ENV PORT=3000
EXPOSE 3000
CMD node ./dist/server/entry.mjs