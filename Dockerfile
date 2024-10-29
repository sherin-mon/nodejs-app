# Use the official Node.js image as a base
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package.json ./

# Install dependencies (including Express)
RUN npm install

# Copy all application files into the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]

