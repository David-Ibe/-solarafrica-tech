# Use Ubuntu as the base image
FROM ubuntu:22.04

# Install Apache
RUN apt-get update && apt-get install -y apache2

# Copy index.html to Apache web root
COPY index.html /var/www/html/index.html

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]

# Expose port 80
EXPOSE 80
