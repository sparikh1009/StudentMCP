# Base image
FROM node:20

# Set working directory
WORKDIR /app

# Copy everything
COPY . .

# Install all dependencies
RUN npm install

# Build TypeScript → dist
RUN npm run build

# Set runtime env vars (if needed)
ENV NODE_ENV=production
ENV MEMORY_FILE_PATH=/app/memory.json

# Expose the default port
EXPOSE 3000

# Start the server
CMD ["npm", "start"]
