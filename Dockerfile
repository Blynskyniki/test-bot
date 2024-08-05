# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install the dependencies
RUN npm install

npm run build
# Copy the rest of the application code
COPY . .

# Expose the port the app runs on (if applicable, typically not needed for Telegram bots)
# EXPOSE 3000


# Command to run the bot
CMD ["node", "index.js"]
