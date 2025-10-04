# Step 1: Choose a base image
FROM node:16

# Step 2: Set working directory inside container
WORKDIR /web


# Step 3: Copy requirements first (for better caching)
COPY package.json .


# Step 4: Install dependencies
CMD ['npm install']


# Step 5: Copy application code
Copy . .


# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Define the command to run the application
CMD ['npm start']