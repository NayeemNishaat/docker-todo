FROM node:18
# RUN apk add --no-cache python2 g++ make
WORKDIR /app
COPY package.json yarn.lock ./ 
# Here ./ refers to WORKDIR of the sandbox
RUN yarn install --production
COPY . .
CMD ["node", "src/index.js"]
EXPOSE 3000