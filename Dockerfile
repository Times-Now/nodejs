#Taking the base image
FROM node:alpine

#Defining the path for the package.json and node.js files. 
#We need to give the following command to say that the files are in the same working directory
COPY ./ ./

#npm is the base package required for the node js to run
RUN npm install

#Starting the node.js server
CMD ["npm", "start"]
