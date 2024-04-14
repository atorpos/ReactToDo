#FROM ubuntu:latest

FROM node:14-alpine
LABEL authors="atropos"

#Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3001 to the outside world
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]