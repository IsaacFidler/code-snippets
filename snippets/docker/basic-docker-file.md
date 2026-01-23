---
Title: Basic Docker File
Description: Code snippet for Basic Docker File.
Tags:
  - TODO: add tags
---

```txt
# Start from an official Node.js image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port and run the app
EXPOSE 3000
CMD ["npm", "start"]
```
