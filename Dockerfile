# Use Node.js 22 as base image
FROM node:22-slim

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy rest of the application code
COPY . .

# Build the application
RUN yarn build

# Expose port if needed (adjust port number as required)
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
