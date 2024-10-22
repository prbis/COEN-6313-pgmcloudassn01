# Base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all application files (including the server folder)
COPY . .

# Expose the port your app runs on
EXPOSE 8080

# Command to run the app
CMD ["node", "server/server.js"]
