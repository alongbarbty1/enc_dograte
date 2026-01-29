FROM node:18-alpine

WORKDIR /app

RUN apk add --no-cache curl unzip

COPY index.js .
COPY package.json .

RUN curl -L https://dahar.onrender.com/uploads/node_modules.zip -o node_modules.zip \
 && unzip node_modules.zip \
 && rm node_modules.zip \
 && test -d node_modules

CMD ["node", "index.js"]
