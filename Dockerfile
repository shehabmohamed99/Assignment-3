# Use Ubuntu as the base image
FROM ubuntu:latest

# Update and install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy the custom index.html file to the appropriate location
COPY index.html /var/www/html/index.html

# Expose port 8080
EXPOSE 8080

# Configure Nginx to listen on port 8080
RUN sed -i 's/listen 80 default_server;/listen 8080 default_server;/g' /etc/nginx/sites-available/default

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]