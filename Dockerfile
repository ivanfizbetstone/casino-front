# The first stage
# Build React static files
FROM node:16-alpine as build

WORKDIR /app/frontend
COPY package.json ./
COPY package-lock.json ./
RUN npm ci --silent
COPY ./ ./
CMD ["yarn", "start"]