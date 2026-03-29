# Use Node.js official image
FROM node:14

# Create app directory
WORKDIR /app

# Copy app files
COPY package*.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
