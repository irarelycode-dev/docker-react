FROM node:alpine as builder  
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build 

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html














# as can be used as an alias for different build phases
# /app/build is going to have all build files
# /usr/share/nginx/html is the folder in nginx container where our build files will be copied