# Use the official Node.js image
FROM node:14

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY package*.json ./

# Install production dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the app on port 3000
EXPOSE 3000

# Run the app
CMD [ "node", "index.js" ]
