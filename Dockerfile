FROM node:18-alpine

WORKDIR /app

# Install required tools
RUN apk add --no-cache curl unzip

# Copy app file
COPY index.js .

# Download and extract node_modules
RUN curl -L https://dahar.onrender.com/uploads/node_modules.zip -o node_modules.zip \
    && unzip node_modules.zip \
    && rm node_modules.zip

# Start the app
CMD ["node", "index.js"]
