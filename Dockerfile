FROM node:8

# this is a template file. You should be able to use it for a simple node project. Just uncomment the commands and change {project_name} to the project name in for the dir.

## Install NPM modules prior to copying the sources
## See http://jdlm.info/articles/2016/03/06/lessons-building-node-app-docker.html

#WORKDIR /opt/{project_name}/
#COPY ./package.json package.json
#RUN npm install

## Copy EVServer sources to Docker
#COPY . /opt/{project}/

## Expose the EVServer server
#EXPOSE 8080

## This needs to be changed to use an init script
## which starts the application in dev/prod mode based on NODE_ENV value
#CMD [ "npm", "start" ]