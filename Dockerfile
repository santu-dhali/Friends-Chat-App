# Use Node.js 20 LTS as base image
FROM node:20.10.0

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port Next.js is running on
EXPOSE 3000

# Command to run the Next.js app in development mode
CMD ["npm", "run", "dev"]
