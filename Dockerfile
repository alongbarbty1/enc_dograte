FROM node:18

WORKDIR /app

# Install tools
RUN apt-get update && apt-get install -y unzip curl && rm -rf /var/lib/apt/lists/*

# Copy app files
COPY . .

# Download node_modules.zip
RUN curl -L https://dahar.onrender.com/uploads/node_modules.zip -o node_modules.zip

# Unzip and clean
RUN unzip node_modules.zip && rm node_modules.zip

# Start app
CMD ["node", "index.js"]
