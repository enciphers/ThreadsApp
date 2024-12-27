# Use the official Node.js 16 image as a parent image
FROM node:16-apline

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in package*.json
RUN cd backend && npm i --force && \
cd ../client/ && npm i --force
