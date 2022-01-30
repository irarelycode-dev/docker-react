FROM node:alpine as builder  
WORKDIR '/app'
COPY package.json /app
RUN npm install
COPY ./ /app
RUN npm run build 

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html














# as can be used as an alias for different build phases
# /app/build is going to have all build files
# /usr/share/nginx/html is the folder in nginx container where our build files will be copied
# build this image and map the port to default 8080 port of nginx 
# EXPOSE 80 will be mapped as port by elastic beanstalk
 