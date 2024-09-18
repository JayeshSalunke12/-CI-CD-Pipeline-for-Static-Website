# Use the official NGINX image as the base
FROM nginx:alpine

# Copy static website files to the NGINX container
COPY ./ /usr/share/nginx/html

# Expose port 80 to access the website
EXPOSE 80
