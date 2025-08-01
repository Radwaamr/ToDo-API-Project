#Use Node.js official image as base
FROM node:18

#Set the working directory
WORKDIR /app

#Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

#Copy the rest of the application code
COPY . .

#Expose the application port
EXPOSE 3000

#Start the application
CMD ["node", "server.js"]
