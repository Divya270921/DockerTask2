# Use an official Node.js runtime as a parent image
  FROM node:14
#
# # Set the working directory in the container
  WORKDIR /usr/src/app
#
# # Copy package.json and package-lock.json
  COPY package*.json ./
#
# # Install dependencies
  RUN npm install
#
# # Copy the rest of the application code
  COPY . .
#
# # Expose port 3000 to the outside world
 EXPOSE 3000
#
# # Define the command to run the app
  CMD ["npm", "start"]
#