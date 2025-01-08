# Base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Copy the application file
COPY app.js ./

# Install dependencies
RUN npm install

# Expose the port
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]