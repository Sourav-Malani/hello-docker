# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json file to the container
COPY package.json .

# Install project dependencies
RUN npm install

# Copy the HTML file, TensorFlow Lite model, and server script to the container
COPY index.html .
COPY model_unquant.tflite .
COPY server.js .

# Expose port 80 for the web server
EXPOSE 80

# Start the Node.js server when the container runs
CMD ["node", "server.js"]
