# Step 1: Choose a base image
FROM node:16

# Step 2: Set working directory inside container
WORKDIR /app 

#This was web instead of app but i chnaged it to app because this is a web app


# Step 3: Copy requirements first (for better caching)
COPY package.json .


# Step 4: Install dependencies
RUN npm install 

#was CMD ['npm install'], but at this stage, it should be RUN not CMD, 
#CMD should be only the last command because docker will only run the last CMD and any CMD before that will not run


# Step 5: Copy application code
COPY . . 

#was Copy . . before and cmd said to make it consistant capitals"""


# Step 6: Expose the port the app runs on
EXPOSE 3000

# Step 7: Define the command to run the application
CMD ["npm", "start"] 

#was CMD ['npm start'] but since this is JS, docker expects JS syntax with double quotes, 
#and the npm start should be separated */ 