# Use an official Node.js runtime as a parent image
FROM node:18-alpine3.14

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./
COPY tsconfig.json  ./

# Install the dependencies
RUN npm install --legacy-peer-deps

# Copy the rest of the application code
COPY . .

RUN npm run build


# Expose the port the app runs on (if applicable, typically not needed for Telegram bots)
# EXPOSE 3000


# Command to run the bot
CMD ["node", "index.js"]
