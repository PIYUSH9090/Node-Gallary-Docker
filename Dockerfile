FROM node:10.19.0
WORKDIR /app
COPY package.json /app/package.json
RUN npm install --silent
COPY . /app
RUN pwd
RUN ls -lrt	
EXPOSE 80
CMD ["npm","start", "-g", "daemon off;"]