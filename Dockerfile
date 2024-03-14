#
FROM node:21-alpine

#
WORKDIR /app

#
COPY . .

#
RUN npm install

#
EXPOSE 3001

#
CMD ["npm", "start"]