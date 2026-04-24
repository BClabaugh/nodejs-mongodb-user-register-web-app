# Use an official Node.js runtime as a parent image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

#Inject Error to cause build failure
# RUN cat does-not-exist.txt  //Remove this line according to AI's suggestion to fix it

# Expose the port the app runs on
EXPOSE 5000

# Define the command to run the app (using "npm start")
CMD [ "npm", "start" ]
