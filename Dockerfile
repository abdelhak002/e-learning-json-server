# Use a lightweight Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package.json and install json-server globally
RUN npm install -g json-server

# Copy the db.json file to the container
COPY db.json /app/db.json

# Expose the port used by json-server
EXPOSE 5000

# Start the json-server
CMD ["json-server", "--watch", "/app/db.json", "--port", "5000", "--host", "0.0.0.0"]
