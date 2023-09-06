FROM node:16-alpine AS build
WORKDIR /app
COPY ./ /usr/local/app/
RUN npm install
COPY . .
RUN npm run build
EXPOSE 4200
CMD ["npm", "start"]
